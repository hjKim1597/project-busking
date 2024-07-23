package com.busking.board.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface BoardNewsService {
	
	void write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void getContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void getBefore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void getCommentList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
