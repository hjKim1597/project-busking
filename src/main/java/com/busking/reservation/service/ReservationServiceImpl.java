package com.busking.reservation.service;

import java.io.IOException;
import java.util.List;

import com.busking.mypage.model.UserJoinDTO;
import com.busking.reservation.model.ReservationDAO;
import com.busking.reservation.model.ReservationLocationDTO;
import com.busking.reservation.model.ReservationReviewDTO;
import com.busking.reservation.model.ReservationsDTO;

import jakarta.servlet.ServletException;

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
    public void createReservation(ReservationsDTO reservation) throws ServletException, IOException {
        reservationDAO.createReservation(reservation);
    }

    @Override
    public UserJoinDTO getUserById(String userId) throws ServletException, IOException {
        return reservationDAO.getUserById(userId);
    }

	@Override
	public List<ReservationLocationDTO> searchLocations(String searchText, String locaPlace)
			throws ServletException, IOException {
		return reservationDAO.searchLocations(searchText, locaPlace);
	}
}
