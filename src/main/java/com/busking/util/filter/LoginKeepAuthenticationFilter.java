package com.busking.util.filter;

import java.io.IOException;

import org.apache.ibatis.session.SqlSession;

import com.busking.mypage.model.UserJoinDTO;
import com.busking.mypage.model.UserJoinMapper;
import com.busking.util.mybatis.MybatisUtil;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginKeepAuthenticationFilter implements Filter {
	
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // 필터 초기화
    }
    
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
		throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpSession session = httpRequest.getSession(false);

        if (session == null || session.getAttribute("user") == null) {
            // 세션이 없거나 세션에 사용자 정보가 없으면 쿠키를 확인
            Cookie[] cookies = httpRequest.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("keepLogin")) {
                        String userId = cookie.getValue();
                        // 사용자 정보를 데이터베이스에서 가져와 세션에 저장
                        SqlSession sqlSession = MybatisUtil.getSqlSessionFactory().openSession(true);
                        UserJoinMapper mapper = sqlSession.getMapper(UserJoinMapper.class);
                        UserJoinDTO user = mapper.getUserInfo(userId);
                        if (user != null) {
                            session = httpRequest.getSession(true);
                            session.setAttribute("user", user);
                            session.setAttribute("userId", userId);
                            session.setAttribute("adminCheck", mapper.adminCheck(userId));
                        }
                    }
                }
            }
        }

        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // 필터 종료
    }
}
