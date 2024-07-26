package com.busking.admin.service;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.admin.model.AdminMapper;
import com.busking.admin.model.AdminPageDTO;
import com.busking.util.mybatis.MybatisUtil;
import com.busking.util.paging.PageVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminServiceImpl implements AdminService {

	// MyBatis를 사용하여 데이터베이스와 상호작용하기 위한 SqlSessionFactory 객체를 생성하는 코드
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	@Override
	public void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// SqlSessionFactory에서 새로운 SqlSession을 연다. 이 세션은 데이터베이스와의 상호작용을 관리한다
		SqlSession sql = sqlSessionFactory.openSession(true);

		// mapper 가져오기
		// 마이바티스는 매퍼 인터페이스를 통해 sql 쿼리를 실행함
		// sql.getMapper(AdminMapper.class)는 AdminMapper의 인터페이스 구현체를 반환한다
		// 이 구현체는 AdminMapper.xml 파일에 정의된 sql 쿼리를 실행함
		AdminMapper Admin = sql.getMapper(AdminMapper.class);

		// MainMapper 인터페이스의 getList 메서드를 호출하여 데이터베이스에서 BoardDTO 객체 목록을 가져온다
		ArrayList<AdminPageDTO> getList = Admin.getList();

		// request
		/* String page = (String) request.getAttribute("page"); */
		/* int pageNum = Integer.parseInt(page); */

		// int total = Admin.getTotal();
		// PageVO pageVO = new PageVO(pageNum, total);
		
		sql.close();

		// 역할: list라는 데이터를 request 객체에 담아서 jsp페이지에 전달함
		// 사용이유: jsp페이지에서 list라는 데이터를 사용할 수 있게 하기 위해서
		request.setAttribute("getList", getList);
		// request.setAttribute("pageVO", pageVO);
		// 역할: 클라이언트가 요청한 페이지를 index.jsp로 변경함
		// 사용이유: index.jsp 페이지에서 list 데이터를 사용해 결과를 보여주기 위해
		request.getRequestDispatcher("adminPage.jsp").forward(request, response);

	}

}
