package com.busking.mypage.service;

import java.io.IOException;

import com.busking.mypage.model.MypageDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MypageServiceImpl implements MypageService{
	
	//회원가입
	@Override
	public void signup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		int userPno = Integer.parseInt(request.getParameter("userPno"));
		String userAddr = request.getParameter("userAddr");
		
		MypageDTO dto = new MypageDTO(userId, userPw, userName, userEmail, userPno, userAddr);
	}
}
