package com.busking.board.controller;

import java.io.IOException;

import com.busking.board.service.BoardCustomerService;
import com.busking.board.service.BoardCustomerServiceImpl;
import com.busking.board.service.BoardFAQService;
import com.busking.board.service.BoardFAQServiceImpl;
import com.busking.board.service.BoardResService;
import com.busking.board.service.BoardResServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.customer")
public class BoardCustomerController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doAction(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doAction(req, resp);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 요청을 분기
		request.setCharacterEncoding("utf-8");

		String uri = request.getRequestURI(); // ip, port번호 제외된 주소
		String path = request.getContextPath(); // 프로젝트 식별 주소
		String command = uri.substring(path.length());

		System.out.println("요청됨 " + command); // 요청 되는지 보기

		// BoardService 선언해두기
		BoardCustomerService service;
		BoardFAQService faq_service;
		BoardResService res_service;
		
		// 누르면 데이터가 필요하면 서비스
		// 아니면 리다이렉트
		// 서비스 영역을 거쳐서 목록을 가져간다
		if (command.equals("/customer_center/customer_center_index.customer")) {
			service = new BoardCustomerServiceImpl();
			service.getList(request, response);
			System.out.println("공지 화면 이동");

		} else if (command.equals("/customer_center/customer_center_guide.customer")) {
			response.sendRedirect("customer_center_guide.jsp");
			System.out.println("안내 화면 이동");

		} else if (command.equals("/customer_center/regist.customer")) {
			// 글 등록
			response.sendRedirect("customer_center_index_write.jsp");
			System.out.println("글 작성으로 이동 체크");

		} else if (command.equals("/customer_center/registForm.customer")) {
			// 글 등록
			service = new BoardCustomerServiceImpl();
			service.regist(request, response);

			System.out.println("글 등록화면 이동");

		} else if (command.equals("/customer_center/getContent.customer")) {
			// 글 상세 내용
			service = new BoardCustomerServiceImpl();
			service.getContent(request, response);
			System.out.println("글 내용보기 화면 이동 요청");

		} else if (command.equals("/customer_center/modify.customer")) {
			service = new BoardCustomerServiceImpl();
			service.modify(request, response);

		} else if (command.equals("/customer_center/update.customer")) {
			service = new BoardCustomerServiceImpl();
			service.update(request, response);

		}
		// 삭제 기능
		else if (command.equals("/customer_center/delete.customer")) {
			service = new BoardCustomerServiceImpl();
			service.delete(request, response);
			System.out.println("삭제 기능 컨트롤러");
			
		}

		//
		//
		// FAQ-------------------------------------------------------------------

		else if (command.equals("/customer_center/customer_center_FAQ.customer")) {

			// 서비스 영역을 거쳐서 목록을 가져간다
			faq_service = new BoardFAQServiceImpl();
			faq_service.getList(request, response);

			System.out.println("FAQ 화면 이동");

		} else if (command.equals("/customer_center/getFAQContent.customer")) {
			// 글 상세 내용

			System.out.println("글 내용보기 화면 이동 요청");

			faq_service = new BoardFAQServiceImpl();
			faq_service.getContent(request, response);

		} else if (command.equals("/customer_center/registFAQForm.customer")) {
			// 글 등록

			faq_service = new BoardFAQServiceImpl();
			faq_service.regist(request, response);

			System.out.println("글 등록화면 이동");

		} else if (command.equals("/customer_center/modifyFAQ.customer")) {

			faq_service = new BoardFAQServiceImpl();
			faq_service.modify(request, response);

		} else if (command.equals("/customer_center/updateFAQ.customer")) {

			faq_service = new BoardFAQServiceImpl();
			faq_service.update(request, response);

		}
		// 삭제 기능
		else if (command.equals("/customer_center/deleteFAQ.customer")) {

			System.out.println("삭제 기능 컨트롤러");

			faq_service = new BoardFAQServiceImpl();
			faq_service.delete(request, response);
		}
		
		//
		//
		// Res-----------------------------------------------------

		else if (command.equals("/customer_center/customer_center_res.customer")) {
			res_service = new BoardResServiceImpl();
			res_service.getList(request, response);
			System.out.println("Res 화면 이동");
			
		} else if (command.equals("/customer_center/getResContent.customer")) {
			// 글 상세 내용

			System.out.println("글 내용보기 화면 이동 요청");

			res_service = new BoardResServiceImpl();
			res_service.getContent(request, response);

		} else if (command.equals("/customer_center/registResForm.customer")) {
			// 글 등록

			res_service = new BoardResServiceImpl();
			res_service.regist(request, response);

			System.out.println("글 등록화면 이동");

		} else if (command.equals("/customer_center/modifyRes.customer")) {

			res_service = new BoardResServiceImpl();
			res_service.modify(request, response);

		} else if (command.equals("/customer_center/updateRes.customer")) {

			res_service = new BoardResServiceImpl();
			res_service.update(request, response);

		}
		// 삭제 기능
		else if (command.equals("/customer_center/deleteRes.customer")) {

			System.out.println("삭제 기능 컨트롤러");

			res_service = new BoardResServiceImpl();
			res_service.delete(request, response);
		} else if (command.equals("/customer_center/regist.customer")) {
			
			Boolean isAdmin = (Boolean) request.getSession().getAttribute("isAdmin");

            if (isAdmin != null && isAdmin) {
                // 관리자라면 글쓰기 처리
                service = new BoardCustomerServiceImpl();
                service.regist(request, response);
            } else {
                // 관리자 아님, 에러 처리
                response.sendRedirect("customer_center_index.customer?error=관리자만 글을 쓸 수 있습니다.");
            }
        }
		
		
		
	}
}
