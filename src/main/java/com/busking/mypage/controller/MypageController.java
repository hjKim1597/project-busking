package com.busking.mypage.controller;

import java.io.IOException;
import com.busking.mypage.service.MypageService;
import com.busking.mypage.service.MypageServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.userinfo")
public class MypageController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private MypageService mypageService;

    public MypageController() {
        this.mypageService = new MypageServiceImpl();
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

        if (command.equals("/mypage/getUserInfo.userinfo")) {
            mypageService.getUserInfo(request, response);
        } else if (command.equals("/mypage/updateUserInfo.userinfo")) {
            mypageService.updateUserInfo(request, response);
        } else if (command.equals("/mypage/deleteUser.userinfo")) {
        	mypageService.deleteUser(request, response);
        } else if (command.equals("/mypage/deleteUserPage.userinfo")) {
            request.getRequestDispatcher("/mypage/deleteUser.jsp").forward(request, response);
        } else if (command.equals("/mypage/logout.userinfo")) {
            request.getSession().invalidate();
            response.sendRedirect(request.getContextPath() + "/index.main");
        }
    }
}