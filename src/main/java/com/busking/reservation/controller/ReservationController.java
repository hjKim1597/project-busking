package com.busking.reservation.controller;

import java.io.IOException;

import com.busking.reservation.service.ReservationService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.reservation")
public class ReservationController extends HttpServlet {

	public ReservationController() {
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
	
		// ReservationService 선언
		ReservationService service = new ReservationService();
		
		if(command.equals("/reservation/reservation")) {
			
		}
		
	}
	
	
}
