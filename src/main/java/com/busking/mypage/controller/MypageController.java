package com.busking.mypage.controller;

import java.io.IOException;

import com.busking.mypage.service.MypageService;
import com.busking.mypage.service.MypageServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.mypage")
public class MypageController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private MypageService mypageService = new MypageServiceImpl();
	public MypageController() {
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
		
		
		 if (command.equals("/mypage/signup.mypage")) {
			 mypageService.signup(request, response);
	     }
	}
	
	
}
