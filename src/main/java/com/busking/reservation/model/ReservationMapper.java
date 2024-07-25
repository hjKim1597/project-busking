package com.busking.reservation.model;

import java.util.List;

public interface ReservationMapper {
    List<ReservationLocationDTO> getReservationLocations();
    ReservationLocationDTO getReservationLocationById(int locaId);
    void createReservation(ReservationsDTO reservation);
}
