package com.busking.board.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.board.model.BoardCustomerDTO;
import com.busking.board.model.BoardCustomerMapper;
import com.busking.board.model.BoardNewsDTO;
import com.busking.board.model.BoardNewsMapper;
import com.busking.util.mybatis.MybatisUtil;
import com.busking.util.paging.PageVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class BoardCustomerServiceImpl implements BoardCustomerService {

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
		BoardCustomerMapper boardMapper = sql.getMapper(BoardCustomerMapper.class);

		// 화면에 리스트 내보내기
		ArrayList<BoardCustomerDTO> noticeList = new ArrayList<>();

		int total = boardMapper.getTotal(); // 페이징 용 전체 글 개수 가져오기
		PageVO pageVO = new PageVO(pageNum, total); // 페이징용 PageVO 객체 생성
		noticeList = boardMapper.getList(pageVO);

		sql.close();

		// response
		request.setAttribute("pageVO", pageVO); // PageVO 객체 넘기기
		request.setAttribute("noticeList", noticeList);
		request.getRequestDispatcher("customer_center_index.jsp").forward(request, response);

		
//		// request
//		String page = request.getParameter("page");
//		if (page == null)
//			page = "1";
//		int pageNum = Integer.parseInt(page);
//
//		String type = request.getParameter("type");
//		String target = request.getParameter("target");
//
//		// DTO
//		ArrayList<BoardCustomerDTO> list = new ArrayList<>();
//
//		// Mapper
//		SqlSession sql = sqlSessionFactory.openSession(true);
//		BoardCustomerMapper mapper = sql.getMapper(BoardCustomerMapper.class);
//		int total = mapper.getTotal();
//		PageVO pageVO = new PageVO(pageNum, total);
//
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("type", type);
//		map.put("target", target);
//		map.put("page", pageVO);
//
//		list = mapper.getList(map);
//		sql.close();
//
//		// response
//		if (list.size() == 0 && type != null) {
//			response.setContentType("text/html; charset=UTF-8");
//			PrintWriter out = response.getWriter();
//			out.println("<script>");
//			out.println("alert('검색 결과가 없습니다.');");
//			out.println("location.href='customer_center_index.customer';");
//			out.println("</script>");
//			return;
//			
//		} else if (type == null) {
//			request.setAttribute("noticeList", list);
//			request.setAttribute("pageVO", pageVO);
//			request.getRequestDispatcher("customer_center_index.customer").forward(request, response);
//			return;
//			
//		} else {
//			request.setAttribute("noticeList", list);
//			request.setAttribute("pageVO", pageVO);
//			request.getRequestDispatcher("customer_center_index.customer?type=" + type + "&target=" + target).forward(request,
//					response);
//			return;
//		}
		

	}

	// 글 등록
	@Override
	public void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 확인
		System.out.println("글 작성 OK");

		// request
		String managerId = "관리자"; // 관리자 아이디 고정
		String noticeTitle = request.getParameter("title");
		String noticeContent = request.getParameter("content");
		String resTime = request.getParameter("resTime");

		// DTO
		BoardCustomerDTO dto = new BoardCustomerDTO(0, managerId, noticeTitle, noticeContent, null, 0, resTime);

		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCustomerMapper boardMapper = sql.getMapper(BoardCustomerMapper.class);

		boardMapper.regist(dto);
		sql.close();

		// 목록화면 보내기
		response.sendRedirect("customer_center_index.customer");

	}

	// 글 내용
	@Override
	public void getContent(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// a링크로 넘어온 값을 받는다
		String noticeNum = request.getParameter("noticeNum");

		// Mybatis
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCustomerMapper boardMapper = sql.getMapper(BoardCustomerMapper.class);

		boardMapper.increaseHit(noticeNum); // 조회수 증가
		BoardCustomerDTO dto = boardMapper.getContent(noticeNum);
		sql.close(); // 마이바티스 세션 종료

		// response
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("customer_center_index_content.jsp").forward(request, response);
		// 자체 페이지 이름으로 포워드 이동

	}

	// 글 수정 화면
	@Override
	public void modify(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		String noticeNum = request.getParameter("noticeNum");
//
//		SqlSession sql = sqlSessionFactory.openSession(true);
//		BoardCustomerMapper boardMapper = sql.getMapper(BoardCustomerMapper.class);
//		BoardCustomerDTO dto = boardMapper.getContent(noticeNum);
//		sql.close(); // 마이바티스 세션 종료
//
//		System.out.println(dto.getNoticeNum());
//
//		// dto를 request에 담고 forward 화면으로 이동
//		request.setAttribute("dto", dto);
//		request.getRequestDispatcher("customer_center_index_content_modify.jsp").forward(request, response);
//		;

		HttpSession session = request.getSession();
	    Boolean isAdmin = (Boolean) session.getAttribute("adminCheck");

	    if (isAdmin != null && isAdmin) {
	        String noticeNum = request.getParameter("noticeNum");

	        SqlSession sql = sqlSessionFactory.openSession(true);
	        BoardCustomerMapper boardMapper = sql.getMapper(BoardCustomerMapper.class);
	        BoardCustomerDTO dto = boardMapper.getContent(noticeNum);
	        sql.close(); // 마이바티스 세션 종료

	        // dto를 request에 담고 forward 화면으로 이동
	        request.setAttribute("dto", dto);
	        request.getRequestDispatcher("customer_center_index_content_modify.jsp").forward(request, response);
	    } else {
	        // 관리자 인증 실패 시 경고 메시지와 리다이렉트
	        response.sendRedirect(request.getContextPath() + "/customer_center/customer_center_index.customer?error=관리자만 수정할 수 있습니다");
	    }
	    
	}

	// update
	@Override
	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 확인
		System.out.println("글 수정 확인");

		// request
		String managerId = "관리자"; // 관리자 아이디 고정
		String noticeTitle = request.getParameter("title");
		String noticeContent = request.getParameter("content");
		String resTime = request.getParameter("resTime");

		int noticeNum = Integer.parseInt(request.getParameter("noticeNum"));

		// DTO
		BoardCustomerDTO dto = new BoardCustomerDTO(noticeNum, managerId, noticeTitle, noticeContent, null, 0, resTime);

		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCustomerMapper boardMapper = sql.getMapper(BoardCustomerMapper.class);

		boardMapper.update(dto);
		int result = boardMapper.update(dto);
		sql.close(); // close

		System.out.println("업데이트 성공 여부  " + result);

		if (result == 1) { // 업데이트 성공

			response.setContentType("text/html; charset=UTF-8;");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('정상 처리 되었습니다!');");
			out.println("location.href='customer_center_index.customer';");
			out.println("</script>");

		} else { // 업데이트 실패

			// 다시 수정화면으로
			response.sendRedirect("getContent.customer?noticeNum=" + noticeNum);

		}
	}

	@Override
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("delete 메서드 실행 되나");

		int noticeNum = Integer.parseInt(request.getParameter("noticeNum"));

		// DTO

		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardCustomerMapper boardMapper = sql.getMapper(BoardCustomerMapper.class);

		boardMapper.delete(noticeNum);
		int result = boardMapper.delete(noticeNum);
		sql.close(); // close

		System.out.println("삭제 여부  " + result);

		response.sendRedirect("customer_center_index.customer");

	}

}
