package com.busking.board.controller;

import java.io.IOException;

import com.busking.board.service.BoardFreeService;
import com.busking.board.service.BoardFreeServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.boardFree")
public class BoardFreeController extends HttpServlet {
	
	public BoardFreeController() {
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
		BoardFreeService service;
		
		if(command.equals("/board/board_list.boardFree")) {
			String page = request.getParameter("page");
			if(page == null) page = "1";
			request.setAttribute("page", page);
			
			service = new BoardFreeServiceImpl();
			service.getList(request, response);
			
		} else if(command.equals("/board/board_write.boardFree")) {
			response.sendRedirect("board_write.jsp");
			
		} else if(command.equals("/board/board_writeForm.boardFree")) {
			service = new BoardFreeServiceImpl();
			service.write(request, response);
			
		} else if(command.equals("/board/board_content.boardFree")) {
			service = new BoardFreeServiceImpl();
			service.getContent(request, response);
			
		} else if(command.equals("/board/board_edit.boardFree")) {
			service = new BoardFreeServiceImpl();
			service.getBefore(request, response);
			
		} else if(command.equals("/board/board_editForm.boardFree")) {
			service = new BoardFreeServiceImpl();
			service.edit(request, response);
			
		}  else if(command.equals("/board/board_delete.boardFree")) {
			service = new BoardFreeServiceImpl();
			service.delete(request, response);
			
		}
	}
}
