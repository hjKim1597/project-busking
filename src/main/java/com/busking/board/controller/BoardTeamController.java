package com.busking.board.controller;

import java.io.IOException;

import com.busking.board.service.BoardTeamService;
import com.busking.board.service.BoardTeamServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.boardTeam")
public class BoardTeamController extends HttpServlet {
	
	public BoardTeamController() {
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
		BoardTeamService service;
		
		if(command.equals("/board/board_team_list.boardTeam")) {
			String page = request.getParameter("page");
			if(page == null) page = "1";
			request.setAttribute("page", page);
			
			service = new BoardTeamServiceImpl();
			service.getList(request, response);
			
		} else if(command.equals("/board/board_team_write.boardTeam")) {
			response.sendRedirect("board_team_write.jsp");
			
		} else if(command.equals("/board/board_team_writeForm.boardTeam")) {
			service = new BoardTeamServiceImpl();
			service.write(request, response);
			
		} else if(command.equals("/board/board_team_content.boardTeam")) {
			service = new BoardTeamServiceImpl();
			service.getContent(request, response);
			
		} else if(command.equals("/board/board_team_delete.boardTeam")) {
			service = new BoardTeamServiceImpl();
			service.delete(request, response);
			
		}
	}
}
