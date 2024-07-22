package com.busking.index.service;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.BoardNewsDTO;
import com.busking.index.model.IndexMapper;
import com.busking.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class IndexServiceImpl implements IndexService{
	
	SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	
	@Override
	public void getNewsList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// request
		// DTO
		ArrayList<BoardNewsDTO> list = new ArrayList<>();
		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		IndexMapper mapper = sql.getMapper(IndexMapper.class);
		list = mapper.getNewsList();
		// response
		
	}

}
