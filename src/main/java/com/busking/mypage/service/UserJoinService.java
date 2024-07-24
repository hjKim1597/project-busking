package com.busking.mypage.service;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface UserJoinService {
    void signup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
    void checkUserId(String userId, HttpServletResponse response) throws ServletException, IOException;
    void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
    void userInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
    void findUserId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
    void findUserPw(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}