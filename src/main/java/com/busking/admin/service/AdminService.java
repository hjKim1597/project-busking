package com.busking.admin.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface AdminService {
	// 목록 조회
	void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	// 예약 수락관리
	void updateResultT(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	// 예약 거절관리
	void updateResultF(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	// 예약 대기관리
	void updateResultN(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

}