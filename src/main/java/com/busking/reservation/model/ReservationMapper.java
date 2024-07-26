package com.busking.reservation.model;

import java.util.List;

public interface ReservationMapper {
    
    List<ReservationLocationDTO> getReservationLocations();
    
    ReservationLocationDTO getReservationLocationById(int locaId);
    
    List<ReservationReviewDTO> getReview(int locaId);
    
    void addReview(ReservationReviewDTO review); // 추가된 부분
    
    void createReservation(ReservationsDTO reservation);
}
