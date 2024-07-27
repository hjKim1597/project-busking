package com.busking.reservation.service;

import java.io.IOException;
import java.util.List;

import com.busking.mypage.model.UserJoinDTO;
import com.busking.reservation.model.ReservationLocationDTO;
import com.busking.reservation.model.ReservationReviewDTO;
import com.busking.reservation.model.ReservationsDTO;

import jakarta.servlet.ServletException;

public interface ReservationService {
    List<ReservationLocationDTO> getReservationList() throws ServletException, IOException;
    
    ReservationLocationDTO getReservationLocationById(int locaId) throws ServletException, IOException;
    
    List<ReservationReviewDTO> getReview(int locaId) throws ServletException, IOException;
    
    void addReview(ReservationReviewDTO review) throws ServletException, IOException;
    
    void createReservation(ReservationsDTO reservation) throws ServletException, IOException;
    
    UserJoinDTO getUserById(String userId) throws ServletException, IOException;
}
