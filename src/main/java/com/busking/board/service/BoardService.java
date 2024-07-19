package com.busking.board.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface BoardService {
	
	void writeFree(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void getFreeList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void getFreeContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
