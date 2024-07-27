package com.busking.mypage.service;

import java.io.IOException;
import java.io.PrintWriter;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.mypage.model.UserJoinDTO;
import com.busking.mypage.model.UserJoinMapper;
import com.busking.util.mybatis.MybatisUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class UserJoinServiceImpl implements UserJoinService {
    private SqlSessionFactory sqlSessionFactory;

    public UserJoinServiceImpl() {
        this.sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
    }

    @Override
    public void signup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String userPw = request.getParameter("userPw");
        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");
        String userPno = request.getParameter("userPno");
        String userAddr = request.getParameter("userAddr");
        String userGender = request.getParameter("userGender");

        UserJoinDTO dto = new UserJoinDTO(userId, userPw, userName, userEmail, userPno, userAddr, userGender);

        SqlSession sqlSession = sqlSessionFactory.openSession(true);
        UserJoinMapper mapper = sqlSession.getMapper(UserJoinMapper.class);
        int result = mapper.signup(dto);

        sqlSession.close();

        if (result == 1) {
            response.sendRedirect(request.getContextPath() + "/mypage/registerSuccess.jsp");
        } else {
            response.setContentType("text/html; charset=UTF-8;");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('회원가입에 실패했습니다. 다시 시도해주세요.');");
            out.println("location.href='register.jsp';");
            out.println("</script>");
        }
    }
    @Override
    public void checkUserId(String userId, HttpServletResponse response)
    		throws ServletException, IOException {
    	  SqlSession sqlSession = sqlSessionFactory.openSession();
          UserJoinMapper mapper = sqlSession.getMapper(UserJoinMapper.class);
          int count = mapper.checkUserId(userId);

          sqlSession.close();

          response.setContentType("text/plain; charset=UTF-8;");
          PrintWriter out = response.getWriter();
          if (count == 0) {
              out.print("사용할 수 있는 아이디입니다.");
          } else {
              out.print("이미 사용 중인 아이디입니다.");
          }
    }
    @Override
    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String userPw = request.getParameter("userPw");

        UserJoinDTO dto = new UserJoinDTO();
        dto.setUserId(userId);
        dto.setUserPw(userPw);

        SqlSession sqlSession = sqlSessionFactory.openSession(true);
        UserJoinMapper mapper = sqlSession.getMapper(UserJoinMapper.class);
        UserJoinDTO user = mapper.login(dto);

        if (user != null) {
            boolean adminCheck = mapper.adminCheck(userId);

            // 세션에 사용자 정보 저장
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("userId", userId);
            session.setAttribute("adminCheck", adminCheck);
            
            // 로그인 상태 유지 쿠키 설정
            String keepLogin = request.getParameter("keepLogin");
            if ("on".equals(keepLogin)) {
                Cookie loginCookie = new Cookie("keepLogin", "true");
                loginCookie.setMaxAge(7 * 24 * 60 * 60); // 7일 동안 유지
                response.addCookie(loginCookie);
            }
            response.sendRedirect(request.getContextPath() + "/index.main");
        } else {
            response.setContentType("text/html; charset=UTF-8;");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('로그인에 실패했습니다. 아이디와 비밀번호를 확인해주세요.');");
            out.println("location.href='" + request.getContextPath() + "/userjoin/loginPage.mypage';");
            out.println("</script>");
        }
    }
    @Override
    public void userInfo(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
    	
    }
    @Override
    public void findUserId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        UserJoinDTO dto = new UserJoinDTO();
        dto.setUserEmail(email);
        dto.setUserPno(phone);

        SqlSession sqlSession = sqlSessionFactory.openSession();
        UserJoinMapper mapper = sqlSession.getMapper(UserJoinMapper.class);
        String foundId = mapper.findUserId(dto);
        sqlSession.close();

        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        out.print(foundId != null ? foundId : "정보가 일치하지 않습니다.");
        out.flush();
    }

    @Override
    public void findUserPw(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String phone = request.getParameter("phone");

        UserJoinDTO dto = new UserJoinDTO();
        dto.setUserId(id);
        dto.setUserPno(phone);

        SqlSession sqlSession = sqlSessionFactory.openSession();
        UserJoinMapper mapper = sqlSession.getMapper(UserJoinMapper.class);
        String foundPw = mapper.findUserPw(dto);
        sqlSession.close();

        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        out.print(foundPw != null ? foundPw : "정보가 일치하지 않습니다.");
        out.flush();
    }

	public UserJoinDTO findUserId(String userId) {
		// TODO Auto-generated method stub
		return null;
	}
}