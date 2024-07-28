package com.busking.util.filter;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebFilter({
	"/board/board_comment_free_write.comment"
	,"/board/board_comment_news_write.comment"
	,"/board/board_comment_team_write.comment"
	,"/board/board_comment_ask_write.comment"
	,"/board/board_comment_free_reply.comment" 
	,"/board/board_comment_news_reply.comment" 
	})
public class CommentAuthenticationFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		String bno = request.getParameter("bno");
		String subject = request.getParameter("subject");
		
		if(userId == null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인 후 이용가능한 서비스 입니다.');");
			out.println("location.href='" + request.getContextPath() +"/board/board_comment_" + subject + "_list.comment?bno=" + bno + "';");
			out.println("</script>");
			
			return;
		}
		/*
		 * String writer = request.getParameter("writer");
		 * 
		 * if(writer == null || !writer.equals(userId)) {
		 * 
		 * response.setContentType("text/html; charset=UTF-8"); PrintWriter out =
		 * response.getWriter(); out.println("<script>");
		 * out.println("alert('권한이 없습니다.');"); out.println("location.href='" +
		 * request.getContextPath() +"/board/board_comment_" + subject +
		 * "_list.comment?bno=" + bno + "';"); out.println("</script>");
		 * 
		 * return; }
		 */
		
		chain.doFilter(request, response);	
		
	}
	
}
