package com.busking.mypage.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.json.JSONObject;

import com.busking.mypage.model.UserJoinDTO;
import com.busking.mypage.model.UserJoinMapper;
import com.busking.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/kakaoLogin")
public class KakaoLoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SqlSessionFactory sqlSessionFactory;

    public KakaoLoginController() {
        this.sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }
        JSONObject jsonObj = new JSONObject(sb.toString());
        String kakaoId = String.valueOf(jsonObj.getLong("id"));
        String email = jsonObj.getString("email");
        String nickname = jsonObj.getString("nickname");

        SqlSession sqlSession = sqlSessionFactory.openSession(true);
        UserJoinMapper mapper = sqlSession.getMapper(UserJoinMapper.class);
        UserJoinDTO user = mapper.findUserById(kakaoId);

        if (user == null) {
            // 사용자 정보가 없으면 회원가입 처리
            user = new UserJoinDTO();
            user.setUserId(kakaoId);
            user.setUserEmail(email);
            user.setUserName(nickname);
            user.setUserPw(""); // 비밀번호는 빈 문자열로 설정
            user.setUserPno("01000000000"); // 기본 휴대폰 번호
            user.setUserAddr("Default Address"); // 기본 주소
            user.setUserGender("없음"); // 기본 성별

            mapper.signup(user);
        }

        // 세션에 사용자 정보 저장
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        session.setAttribute("userId", user.getUserId());
        session.setAttribute("userEmail", user.getUserEmail());
        session.setAttribute("userName", user.getUserName());

        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.print("{\"success\": true}");
        out.flush();
    }
}