package com.busking.board.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.FAQDTO;
import com.busking.board.model.BoardFAQMapper;
import com.busking.util.mybatis.MybatisUtil;
import com.busking.util.paging.PageVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardFAQServiceImpl implements BoardFAQService {

	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	// 리스트 가져오기
	@Override
	public void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 글 목록

		// request
		
		// 페이지 번호 받아오기
		String page = request.getParameter("page");
		if(page == null) page = "1";
		int pageNum = Integer.parseInt(page);

		// DTO

		// 호출하기
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardFAQMapper FAQMapper = sql.getMapper(BoardFAQMapper.class);

		// 화면에 리스트 내보내기
		ArrayList<FAQDTO> faqList = new ArrayList<>();

		int total = FAQMapper.getTotal(); // 페이징 용 전체 글 개수 가져오기
		PageVO pageVO = new PageVO(pageNum, total); // 페이징용 PageVO 객체 생성
		System.out.println(pageVO.getStartPage());
		faqList = FAQMapper.getList(pageVO);

		sql.close();
		// response
		request.setAttribute("pageVO", pageVO); // PageVO 객체 넘기기
		request.setAttribute("faqList", faqList);
		request.getRequestDispatcher("customer_center_FAQ.jsp").forward(request, response);

	}

	// 글 등록
	@Override
	public void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 확인
		System.out.println("글 작성 OK");

		// request
		String managerId = "관리자"; // 관리자 아이디 고정
		String faqTitle = request.getParameter("title");
		String faqContent = request.getParameter("content");

		// DTO
		FAQDTO dto = new FAQDTO(0, managerId, faqContent, faqTitle, faqContent, null, faqContent, managerId);

		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardFAQMapper FAQMapper = sql.getMapper(BoardFAQMapper.class);

		FAQMapper.regist(dto);
		sql.close();

		// 목록화면 보내기
		response.sendRedirect("customer_center_FAQ.customer");

	}

	// 글 내용
	@Override
	public void getContent(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// a링크로 넘어온 값을 받는다
		String faqNum = request.getParameter("faqNum");

		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardFAQMapper FAQMapper = sql.getMapper(BoardFAQMapper.class);


		FAQDTO dto = FAQMapper.getContent(faqNum);
		sql.close(); // 마이바티스 세션 종료

		// response
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("customer_center_FAQ_content.jsp").forward(request, response);
		// 자체 페이지 이름으로 포워드 이동

	}

	// 글 수정 화면
	@Override
	public void modify(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String faqNum = request.getParameter("faqNum");

		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardFAQMapper FAQMapper = sql.getMapper(BoardFAQMapper.class);
		FAQDTO dto = FAQMapper.getContent(faqNum);
		sql.close(); // 마이바티스 세션 종료

		System.out.println(dto.getFaqNum());

		// dto를 request에 담고 forward 화면으로 이동
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("customer_center_FAQ_content_modify.jsp").forward(request, response);
		;

	}

	// update
	@Override
	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 확인
		System.out.println("글 수정 확인");

		// request
		String managerId = "관리자"; // 관리자 아이디 고정
		String faqTitle = request.getParameter("title");
		String faqContent = request.getParameter("content");

		int faqNum = Integer.parseInt(request.getParameter("faqNum"));

		// DTO
		FAQDTO dto = new FAQDTO(faqNum, managerId, faqContent, faqTitle, faqContent, null, faqContent, managerId);

		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardFAQMapper FAQMapper = sql.getMapper(BoardFAQMapper.class);

		FAQMapper.update(dto);
		int result = FAQMapper.update(dto);
		sql.close(); // close

		System.out.println("업데이트 성공 여부  " + result);

		if (result == 1) { // 업데이트 성공

			response.setContentType("text/html; charset=UTF-8;");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('정상 처리 되었습니다!');");
			out.println("location.href='customer_center_FAQ.customer';");
			out.println("</script>");

		} else { // 업데이트 실패

			// 다시 수정화면으로
			response.sendRedirect("getFAQContent.customer?faqNum=" + faqNum);

		}
	}

	@Override
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("delete 메서드 실행 되나");

		int faqNum = Integer.parseInt(request.getParameter("faqNum"));

		// DTO


		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardFAQMapper FAQMapper = sql.getMapper(BoardFAQMapper.class);

		FAQMapper.delete(faqNum);
		int result = FAQMapper.delete(faqNum);
		sql.close(); // close

		System.out.println("삭제 여부  " + result);

		
		
		response.sendRedirect("customer_center_FAQ.customer");

		
	}

	

	

}
