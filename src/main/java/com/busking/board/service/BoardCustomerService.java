package com.busking.board.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface BoardCustomerService {
	
	//글 등록
	void write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
}
