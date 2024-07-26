//웹 애플리케이션에서 사용자의 요청을 처리하는 역할 
//사용자가 웹페이지에서 버튼을 클릭하거나 링크를 클릭하면 이 요청을 받아서 적절한 작업을 수행하고 결과를 보여주는 일을 함

/*
 	1. 사용자의 요청 받아오기: 사용자가 웹페이지에서 요청을 보내면 요청을 받음
 	2. 서비스와 협력하기: 받은 요청에 따라 필요한 작업을 Mainservice에 요청
 	3. 응답 준비하기: MainService가 처리한 결과를 바탕으로 사용자에게 보여줄 내용을 준비함
 	4. 웹페이지 선택: 준비된 데이터를 사용자에게 보여줄 웹페이지를 선택 (index.jsp) 페이지를 선택
*/

package com.busking.board.controller;

import java.io.IOException;

import com.busking.main.service.MainService;
import com.busking.main.service.MainServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("*.main")
public class MainController extends HttpServlet{
	

	private static final long serialVersionUID = 1L;

	public MainController() {
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
	
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());
		
		System.out.println(command );
		

		
		//MainService 선언
		MainService service;
		
		if(command.equals("/index.main")) { 		
			

			
			service = new MainServiceImpl();
			service.getList(request, response);
		}
	}
}
