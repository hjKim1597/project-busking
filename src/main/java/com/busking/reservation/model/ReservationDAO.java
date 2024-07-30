package com.busking.reservation.model;

import com.busking.mypage.model.UserJoinDTO;
import com.busking.util.mybatis.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ReservationDAO {
    private SqlSessionFactory sqlSessionFactory;

    public ReservationDAO() {
        this.sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
    }

    public List<ReservationLocationDTO> getReservationLocations() {
        if (sqlSessionFactory == null) {
            throw new IllegalStateException("SqlSessionFactory is null.");
        }
        try (SqlSession sqlSession = sqlSessionFactory.openSession(true)) {
            ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
            return mapper.getReservationLocations();
        }
    }

    public ReservationLocationDTO getReservationLocationById(int locaId) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession(true)) {
            ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
            return mapper.getReservationLocationById(locaId);
        }
    }

    public List<ReservationReviewDTO> getReview(int locaId) {
        if (sqlSessionFactory == null) {
            throw new IllegalStateException("SqlSessionFactory is null.");
        }
        try (SqlSession sqlSession = sqlSessionFactory.openSession(true)) {
            ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
            return mapper.getReview(locaId);
        }
    }

    public void addReview(ReservationReviewDTO review) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession(true)) {
            ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
            mapper.addReview(review);
        }
    }

    public void createReservation(ReservationsDTO reservation) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession(true)) {
            ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
            mapper.createReservation(reservation);
        }
    }
    
    public UserJoinDTO getUserById(String userId) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession(true)) {
            ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
            return mapper.getUserById(userId);
        }
    }
    
    public List<ReservationLocationDTO> searchLocations(String searchText, String locaPlace) {
        if (sqlSessionFactory == null) {
            throw new IllegalStateException("SqlSessionFactory is null.");
        }
        try (SqlSession sqlSession = sqlSessionFactory.openSession(true)) {
            ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
            Map<String, Object> params = new HashMap<>();
            params.put("searchText", searchText);
            params.put("locaPlace", locaPlace);
            return mapper.searchLocations(params);
        }
    }
}
