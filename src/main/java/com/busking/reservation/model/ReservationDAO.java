package com.busking.reservation.model;

import com.busking.util.mybatis.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import java.util.List;

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
}
