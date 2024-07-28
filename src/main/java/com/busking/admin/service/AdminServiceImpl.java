package com.busking.admin.service;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.admin.model.AdminMapper;
import com.busking.admin.model.AdminPageDTO;
import com.busking.util.mybatis.MybatisUtil;
/*import com.busking.util.paging.PageVO;*/

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminServiceImpl implements AdminService {

	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	@Override
	public void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		LocalDate currentDate = LocalDate.now();
		int currentMonth = currentDate.getMonthValue();
		SqlSession sql = sqlSessionFactory.openSession(true);

		AdminMapper Admin = sql.getMapper(AdminMapper.class);

		// String managerId = request.getParameter("managerId");
		String managerId = "hangang02";
		// String monthParam = request.getParameter("month");

		int month = 0;

		month = currentMonth;
		String monthTarget = String.format("%02d", month);

		// 매퍼 메서드 호출
		Map<String, Object> params = new HashMap<>();
		params.put("managerId", managerId);
		params.put("month", monthTarget); // 2자리 숫자로 포맷

		ArrayList<AdminPageDTO> getList = Admin.getList(params);

		// request.setAttribute("pageVO", pageVO);

//		System.out.println(getList.size());
		request.setAttribute("getList", getList);
		request.getRequestDispatcher("adminPage.jsp").forward(request, response);
		// 페이징 코드
		// request
		/* String page = (String) request.getAttribute("page"); */
		/* int pageNum = Integer.parseInt(page); */

		// int total = Admin.getTotal();
		// PageVO pageVO = new PageVO(pageNum, total);

	}

	@Override
	public void updateReservation(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String result = request.getParameter("result");
		

		SqlSession sql = sqlSessionFactory.openSession(true);
		AdminMapper adminMapper = sql.getMapper(AdminMapper.class);

		Map<String, Object> params = new HashMap<>();
		params.put("userId", userId);
		params.put("result", result);

		int rowsUpdated = adminMapper.updateResult(params);

		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		if (rowsUpdated > 0) {
			response.getWriter().write("Success");
		} else {
			response.getWriter().write("Fail");
		}
	}
}
