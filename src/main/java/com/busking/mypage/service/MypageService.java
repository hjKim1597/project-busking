package com.busking.mypage.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface MypageService {
    void updateUserInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
    void getUserInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
