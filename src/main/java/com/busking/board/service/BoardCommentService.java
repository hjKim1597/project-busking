package com.busking.board.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface BoardCommentService {

	void getCommentFreeList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void getCommentNewsList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void getCommentTeamList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void getCommentAskList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void writeCommentFree(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void writeCommentNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void writeCommentTeam(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void writeCommentAsk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
