package com.busking.reservation.model;

import java.util.List;

import com.busking.mypage.model.UserJoinDTO;

public interface ReservationMapper {
    
    List<ReservationLocationDTO> getReservationLocations();
    
    ReservationLocationDTO getReservationLocationById(int locaId);
    
    List<ReservationReviewDTO> getReview(int locaId);
    
    void addReview(ReservationReviewDTO review); 
    
    void createReservation(ReservationsDTO reservation);
    
    UserJoinDTO getUserById(String userId); // 사용자 정보 가져오기
}
