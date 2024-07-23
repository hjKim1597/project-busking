package com.busking.board.controller;

import java.io.IOException;

import com.busking.board.service.BoardFreeServiceImpl;
import com.busking.board.service.BoardNewsService;
import com.busking.board.service.BoardNewsServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.boardNews")
public class BoardNewsController extends HttpServlet {
	
	public BoardNewsController() {
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
		// BoardService 선언
		BoardNewsService service;
		
		if(command.equals("/board/board_news_list.boardNews")) {
			String page = request.getParameter("page");
			if(page == null) page = "1";
			request.setAttribute("page", page);
			
			service = new BoardNewsServiceImpl();
			service.getList(request, response);
			
		} else if(command.equals("/board/board_news_write.boardNews")) {
			response.sendRedirect("board_news_write.jsp");
			
		} else if(command.equals("/board/board_news_writeForm.boardNews")) {
			service = new BoardNewsServiceImpl();
			service.write(request, response);
			
		} else if(command.equals("/board/board_news_content.boardNews")) {
			service = new BoardNewsServiceImpl();
			service.getContent(request, response);
			
		} else if(command.equals("/board/board_news_edit.boardNews")) {
			service = new BoardNewsServiceImpl();
			service.getBefore(request, response);
			
		} else if(command.equals("/board/board_news_editForm.boardNews")) {
			service = new BoardNewsServiceImpl();
			service.edit(request, response);
			
		} else if(command.equals("/board/board_news_delete.boardNews")) {
			service = new BoardNewsServiceImpl();
			service.delete(request, response);
			
		}
	}
}
