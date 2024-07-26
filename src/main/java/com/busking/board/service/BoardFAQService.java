package com.busking.board.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface BoardFAQService {

	//글 등록 기능
	void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	void getContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	//글 수정
	void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	//글 삭제 기능
	void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	void modify(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

}
