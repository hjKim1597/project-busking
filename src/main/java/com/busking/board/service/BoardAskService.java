package com.busking.board.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface BoardAskService {
	
	void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
