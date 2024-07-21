package com.busking.board.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface BoardService {
	
	void write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void getContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
