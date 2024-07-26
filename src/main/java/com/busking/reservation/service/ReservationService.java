package com.busking.reservation.service;

import java.io.IOException;
import java.util.List;

import com.busking.reservation.model.ReservationLocationDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface ReservationService {
    
    void createReservation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
    
    List<ReservationLocationDTO> getReservationList() throws ServletException, IOException;

    ReservationLocationDTO getReservationLocationById(int locaId) throws ServletException, IOException;
}
