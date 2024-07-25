package com.busking.reservation.model;

import com.busking.util.mybatis.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import java.util.List;

public class ReservationDAO {
    private SqlSessionFactory sqlSessionFactory;

    // SqlSessionFactory 인스턴스 가져오기
    public ReservationDAO() {
        this.sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
    }

    // 예약 장소 목록 가져오기
    public List<ReservationLocationDTO> getReservationLocations() {
        if (sqlSessionFactory == null) {
            throw new IllegalStateException("SqlSessionFactory is null.");
        }
        try (SqlSession sqlSession = sqlSessionFactory.openSession(true)) {
            ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
            return mapper.getReservationLocations();
        }
    }
    
    // 예약 장소 ID로 예약 장소 정보 가져오기
    public ReservationLocationDTO getReservationLocationById(int locaId) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession(true)) {
            ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
            return mapper.getReservationLocationById(locaId);
        }
    }

    // 예약 정보 저장하기
    public void createReservation(ReservationsDTO reservation) {
        try (SqlSession sqlSession = sqlSessionFactory.openSession(true)) {
            ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);
            mapper.createReservation(reservation);
        }
    }
}
