package com.busking.admin.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface AdminService {
	// 목록 조회
	void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	// 예약 관리
	void updateReservation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

}