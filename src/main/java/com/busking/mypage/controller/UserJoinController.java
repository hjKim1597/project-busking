package com.busking.mypage.controller;

import java.io.IOException;

import com.busking.mypage.service.UserJoinService;
import com.busking.mypage.service.UserJoinServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.mypage")
public class UserJoinController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private UserJoinService userJoinService;

    public UserJoinController() {
        this.userJoinService = new UserJoinServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doAction(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doAction(request, response);
    }

    protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();
        String path = request.getContextPath();
        String command = uri.substring(path.length());

        System.out.println(command);

        if (command.equals("/userjoin/signup.mypage")) {
            userJoinService.signup(request, response);
        } else if(command.equals("/userjoin/checkUserId.mypage")) {
            String userId = request.getParameter("userId");
            userJoinService.checkUserId(userId, response);
        } else if(command.equals("/userjoin/login.mypage")) {
            userJoinService.login(request, response);
        } else if(command.equals("/userjoin/userInfo.mypage")) {
        	userJoinService.userInfo(request, response);
        } else if (command.equals("/mypage/findId.mypage")) {
        	userJoinService.findUserId(request, response);
        } else if (command.equals("/mypage/findPw.mypage")) {
        	userJoinService.findUserPw(request, response);
        }
    }
}