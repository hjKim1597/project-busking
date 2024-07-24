package com.busking.reservation.service;

import java.io.IOException;
import java.util.List;

import com.busking.reservation.model.ReservationLocationDTO;
import com.busking.reservation.model.ReservationDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ReservationServiceImpl implements ReservationService {

    private ReservationDAO reservationDAO;

    public ReservationServiceImpl() {
        this.reservationDAO = new ReservationDAO();
    }

    @Override
    public void createReservation(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 예약 생성 로직
    }

    @Override
    public List<ReservationLocationDTO> getReservationList() throws ServletException, IOException {
        return reservationDAO.getReservationLocations();
    }
}
