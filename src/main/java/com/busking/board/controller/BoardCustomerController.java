package com.busking.board.controller;

import java.io.IOException;

import com.busking.board.service.BoardCustomerService;
import com.busking.board.service.BoardCustomerServiceImpl;
import com.busking.board.service.BoardServiceFree;
import com.busking.board.service.BoardServiceNews;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.customer_board")
public class BoardCustomerController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doAction(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doAction(req, resp);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 요청을 분기
		request.setCharacterEncoding("utf-8");

		String uri = request.getRequestURI(); // ip, port번호 제외된 주소
		String path = request.getContextPath(); // 프로젝트 식별 주소
		String command = uri.substring(path.length());

		System.out.println(command); // 요청 되는지 보기

		// 12. BoardService 선언해두기
		BoardCustomerService service;

//		if (command.equals("/customer_center/registForm.customer_board")) {
//			
//			System.out.println("컨트롤러");
//			
//			//서비스를 거쳐서 목록이 나온다
//			service = new BoardCustomerServiceImpl();
//			service.write(request, response);
//		} else if (command.equals("/customer_center/list.customer_board")) {
//			response.sendRedirect("list.customer_board.jsp");
//		}

		if (command.equals("/customer_center/customer_center_index.customer_board")) {
			response.sendRedirect("customer_center_index.jsp");
			System.out.println("index 이동");

		} else if (command.equals("/customer_center/customer_center_month.customer_board")) {
			response.sendRedirect("customer_center_month.jsp");

		} else if (command.equals("/customer_center/customer_center_guide.customer_board")) {
			response.sendRedirect("customer_center_guide.jsp");

		} else if (command.equals("/customer_center/customer_center_FAQ.customer_board")) {
			response.sendRedirect("customer_center_FAQ.jsp");

		} else if (command.equals("/customer_center/customer_center_index.customer_board")) {
			String page = request.getParameter("page");
			if (page == null)
				page = "1";
			request.setAttribute("page", page);

			service = new BoardCustomerServiceImpl();
			service.getList(request, response);

		} else if (command.equals("/customer_center/customer_center_FAQ.customer_board")) {
			String page = request.getParameter("page");
			if (page == null)
				page = "1";
			request.setAttribute("page", page);

			service = new BoardCustomerServiceImpl();
			service.getList(request, response);

		} else if(()) {
			
		}

	}
}
