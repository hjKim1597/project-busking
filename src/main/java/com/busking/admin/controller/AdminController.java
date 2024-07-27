
package com.busking.admin.controller;

import java.io.IOException;

import com.busking.admin.service.AdminService;
import com.busking.admin.service.AdminServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.admin")
public class AdminController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public AdminController() {
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);

	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());

		System.out.println(command);

		AdminService service;

		if (command.equals("/mypage/adminPage.admin")) {
			/*String page = request.getParameter("page");
			if(page == null) page = "1";
			request.setAttribute("page", page);*/
			
			service = new AdminServiceImpl();
			service.getList(request, response);
		}

	}

}
