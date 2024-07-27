package com.busking.reservation.controller;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalTime;
import java.util.List;

import com.busking.mypage.model.UserJoinDTO;
import com.busking.reservation.model.ReservationLocationDTO;
import com.busking.reservation.model.ReservationReviewDTO;
import com.busking.reservation.model.ReservationsDTO;
import com.busking.reservation.service.ReservationService;
import com.busking.reservation.service.ReservationServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.reservation")
public class ReservationController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ReservationService service;

    public ReservationController() {
        super();
        service = new ReservationServiceImpl();
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

        if (command.equals("/reservation/reservation.reservation")) {
            handleReservationList(request, response);
        } else if (command.equals("/reservation/reservationForm.reservation")) {
            handleReservationForm(request, response);
        } else if (command.equals("/reservation/addReview.reservation")) {
            handleAddReview(request, response);
        } else if (command.equals("/reservation/getReviews.reservation")) {
            handleGetReviews(request, response);
        } else if (command.equals("/reservation/reservationPost.reservation")) {
            handleReservationPost(request, response);
        } else if (command.equals("/reservation/submitReservation.reservation")) {
            handleCreateReservation(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "페이지를 찾을 수 없습니다");
        }
    }

    private void handleReservationList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ReservationLocationDTO> locations = service.getReservationList();
        request.setAttribute("locations", locations);
        request.getRequestDispatcher("/reservation/reservation.jsp").forward(request, response);
    }

    private void handleReservationForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int locaId = Integer.parseInt(request.getParameter("locaId"));
            ReservationLocationDTO location = service.getReservationLocationById(locaId);
            List<ReservationReviewDTO> reviewList = service.getReview(locaId);
            
            if (location != null) {
                request.setAttribute("location", location);
                request.setAttribute("reviewList", reviewList);
                request.getRequestDispatcher("/reservation/reservationForm.jsp").forward(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "페이지를 찾을 수 없습니다");
            }
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "페이지를 찾을 수 없습니다");
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "요청을 처리하는 도중 오류가 발생했습니다");
        }
    }

    private void handleGetReviews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int locaId = Integer.parseInt(request.getParameter("locaId"));
            List<ReservationReviewDTO> reviewList = service.getReview(locaId);
            request.setAttribute("reviewList", reviewList);
            request.getRequestDispatcher("/reservation/reviewList.jsp").forward(request, response);
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "요청을 처리하는 도중 오류가 발생했습니다");
        }
    }
    
    private void handleAddReview(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String userId = request.getParameter("userId");
            int locaId = Integer.parseInt(request.getParameter("locaId"));
            String locaContent = request.getParameter("comment");
            int locaScore = Integer.parseInt(request.getParameter("rating"));
            
            ReservationReviewDTO review = new ReservationReviewDTO();
            review.setUserId(userId);
            review.setLocaId(locaId);
            review.setLocaContent(locaContent);
            review.setLocaScore(locaScore);
            
            service.addReview(review);
            response.sendRedirect(request.getContextPath() + "/reservation/reservationForm.reservation?locaId=" + locaId);
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "요청을 처리하는 도중 오류가 발생했습니다");
        }
    }

    private void handleReservationPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String userId = (String) request.getSession().getAttribute("userId"); // 현재 로그인한 사용자 ID
            int locaId = Integer.parseInt(request.getParameter("locaId"));
            Date resDate = Date.valueOf(request.getParameter("selectedDate"));
            LocalTime resTime = LocalTime.parse(request.getParameter("startTime"));
            String endTime = request.getParameter("endTime");

            UserJoinDTO user = service.getUserById(userId); // 사용자 정보 가져오기
            ReservationLocationDTO location = service.getReservationLocationById(locaId);

            if (location != null) {
                request.setAttribute("userName", user.getUserName());
                request.setAttribute("location", location);
                request.setAttribute("resDate", resDate);
                request.setAttribute("resTime", resTime);
                request.setAttribute("endTime", endTime);
                request.setAttribute("locaPicPath", location.getLocaPicPath());
                request.setAttribute("locaName", location.getLocaName());
                request.setAttribute("locaPlace", location.getLocaPlace());
                request.getRequestDispatcher("/reservation/reservationPost.jsp").forward(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "페이지를 찾을 수 없습니다");
            }
      
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "요청을 처리하는 도중 오류가 발생했습니다");
        }
    }
    private void handleCreateReservation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 파라미터 값 가져오기
            String locaIdParam = request.getParameter("locaId");
            String resDateParam = request.getParameter("resDate");
            String resTimeParam = request.getParameter("resTime");
            String resCountParam = request.getParameter("res-count");
            String resContent = request.getParameter("res-content");
            String resAmp = request.getParameter("res-amp");

            if (locaIdParam == null || resDateParam == null || resTimeParam == null || resCountParam == null || resContent == null) {             
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "필수 파라미터가 누락되었습니다.");
                return;
            }

            // 파라미터 값 파싱
            int locaId = Integer.parseInt(locaIdParam);
            String userId = (String) request.getSession().getAttribute("userId");
            Date resDate = Date.valueOf(resDateParam);
            LocalTime resTime = LocalTime.parse(resTimeParam);
            int resCount = Integer.parseInt(resCountParam);

            // 예약 DTO 생성
            ReservationsDTO reservation = new ReservationsDTO();
            reservation.setLocaId(locaId);
            reservation.setUserId(userId);
            reservation.setResDate(resDate);
            reservation.setResTime(resTime);
            reservation.setResCount(resCount);
            reservation.setResContent(resContent);
            reservation.setResAmp(resAmp);

            // 예약 생성 서비스 호출
            service.createReservation(reservation);

            // 예약 성공 시 리다이렉트
            response.sendRedirect(request.getContextPath() + "/mypage/reservationInfo.userinfo");
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "잘못된 파라미터 값입니다.");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "요청을 처리하는 도중 오류가 발생했습니다");
        }
    }




}
