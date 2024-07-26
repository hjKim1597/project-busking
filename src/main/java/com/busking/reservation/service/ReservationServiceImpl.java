package com.busking.reservation.service;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalTime;
import java.util.List;

import com.busking.reservation.model.ReservationDAO;
import com.busking.reservation.model.ReservationLocationDTO;
import com.busking.reservation.model.ReservationReviewDTO;
import com.busking.reservation.model.ReservationsDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ReservationServiceImpl implements ReservationService {

    private ReservationDAO reservationDAO;

    public ReservationServiceImpl() {
        this.reservationDAO = new ReservationDAO();
    }
    
    @Override
    public List<ReservationLocationDTO> getReservationList() throws ServletException, IOException {
        return reservationDAO.getReservationLocations();
    }
    
    @Override
    public ReservationLocationDTO getReservationLocationById(int locaId) throws ServletException, IOException {
        return reservationDAO.getReservationLocationById(locaId);
    }

    @Override
    public List<ReservationReviewDTO> getReview(int locaId) throws ServletException, IOException {
        return reservationDAO.getReview(locaId);
    }

    @Override
    public void addReview(ReservationReviewDTO review) throws ServletException, IOException {
        reservationDAO.addReview(review);
    }

    @Override
    public void createReservation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ReservationsDTO reservation = new ReservationsDTO();
        reservation.setLocaId(Integer.parseInt(request.getParameter("locaId")));
        reservation.setUserId(request.getParameter("userId"));
        reservation.setResContent(request.getParameter("resContent"));
        reservation.setResCount(Integer.parseInt(request.getParameter("resCount")));
        reservation.setResAmp(request.getParameter("resAmp"));
        reservation.setResDate(Date.valueOf(request.getParameter("resDate")));
        reservation.setResTime(LocalTime.parse(request.getParameter("resTime")));

        reservationDAO.createReservation(reservation);
    }
}
