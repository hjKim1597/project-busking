//웹 애플리케이션에서 비즈니스 로직을 처리하는 중요한 역할을 함
/*
  1. 비즈니스 로직처리: ServiceImpl 클래스는 실제 비즈니스 로직을 구현함 예로 사용자 등록, 게시물 작성, 데이터검증 등의 작업 처리
  2. 데이터와의 상호작용: 데이터베이스와 상호작용하는 Mapper와 연결되어 데이터를 읽거나 쓸 수 있음
  3. 중개역할: 웹 애플리케이션의 웹 계층(서블릿)과 데이터베이스 사이에서 중개 역할을 함, 즉 웹 계층에서 요청을 받아서 처리 , 결과를 다시 웹 계층에 전달
 */

package com.busking.main.service;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.BoardDTO;
import com.busking.main.model.MainMapper;
import com.busking.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MainServiceImpl implements MainService{
	

	//MyBatis를 사용하여 데이터베이스와 상호작용하기 위한 SqlSessionFactory 객체를 생성하는 코드
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	
	@Override
	public void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//SqlSessionFactory에서 새로운 SqlSession을 연다. 이 세션은 데이터베이스와의 상호작용을 관리한다
		SqlSession sql = sqlSessionFactory.openSession();
		
		//mapper 가져오기
		//마이바티스는 매퍼 인터페이스를 통해 sql 쿼리를 실행함
		//sql.getMapper(MainMapper.class)는 MainMapper의 인터페이스 구현체를 반환한다 . 
		//이 구현체는 MainMapper.xml 파일에 정의된 sql 쿼리를 실행함 
		MainMapper Main = sql.getMapper(MainMapper.class);
		
		//MainMapper 인터페이스의 getList 메서드를 호출하여 데이터베이스에서 BoardDTO 객체 목록을 가져온다	
		ArrayList<BoardDTO> list = Main.getList();
		sql.close();
		
		//역할: list라는 데이터를 request 객체에 담아서 jsp페이지에 전달함
		//사용이유: jsp페이지에서 list라는 데이터를 사용할 수 있게 하기 위해서
		request.setAttribute("list", list);
		
		//역할: 클라이언트가 요청한 페이지를 index.jsp로 변경함
		//사용이유: index.jsp 페이지에서 list 데이터를 사용해 결과를 보여주기 위해
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

}
