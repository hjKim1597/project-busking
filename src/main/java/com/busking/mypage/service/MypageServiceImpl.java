package com.busking.mypage.service;

import java.io.IOException;
import java.io.PrintWriter;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.mypage.model.MypageDTO;
import com.busking.mypage.model.MypageMapper;
import com.busking.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MypageServiceImpl implements MypageService {
    private SqlSessionFactory sqlSessionFactory;

    public MypageServiceImpl() {
        this.sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
    }

    @Override
    public void signup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String userPw = request.getParameter("userPw");
        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");
        int userPno = Integer.parseInt(request.getParameter("userPno"));
        String userAddr = request.getParameter("userAddr");

        MypageDTO dto = new MypageDTO(userId, userPw, userName, userEmail, userPno, userAddr);

        SqlSession sqlSession = sqlSessionFactory.openSession(true);
        MypageMapper mapper = sqlSession.getMapper(MypageMapper.class);
        int result = mapper.signup(dto);

        sqlSession.close();

        if (result == 1) {
            response.sendRedirect("registerSuccess.jsp");
        } else {
            response.setContentType("text/html; charset=UTF-8;");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('회원가입에 실패했습니다. 다시 시도해주세요.');");
            out.println("location.href='register.jsp';");
            out.println("</script>");
        }
    }
}