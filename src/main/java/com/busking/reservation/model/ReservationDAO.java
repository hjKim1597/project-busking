package com.busking.reservation.model;

import com.busking.util.mybatis.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class ReservationDAO {

    SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

    public List<ReservationLocationDTO> getReservationLocations() {
        try (SqlSession sqlSession = sqlSessionFactory.openSession(true)) {
            ReservationLocationMapper mapper = sqlSession.getMapper(ReservationLocationMapper.class);
            return mapper.getReservationLocations();
        }
    }
}
