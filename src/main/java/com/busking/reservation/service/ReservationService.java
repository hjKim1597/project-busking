package com.busking.reservation.service;

import java.io.IOException;
import java.util.List;

import com.busking.reservation.model.ReservationLocationDTO;
import com.busking.reservation.model.ReservationReviewDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface ReservationService {
    // 예약장소 리스트 가져오기
    List<ReservationLocationDTO> getReservationList() throws ServletException, IOException;
    
    // locaId로 해당 장소 정보 가져오기
    ReservationLocationDTO getReservationLocationById(int locaId) throws ServletException, IOException;
    
    // locaId로 해당 장소의 리뷰 가져오기
    List<ReservationReviewDTO> getReview(int locaId) throws ServletException, IOException;
    
    // 리뷰 추가하기
    void addReview(ReservationReviewDTO review) throws ServletException, IOException;
    
    void createReservation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
