package com.busking.util.filter;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebFilter({
	"/board/board_edit.boardNews"
	,"/board/board_editForm.boardNews"
	,"/board/board_delete.boardNews"
	,"/board/board_edit.boardFree"
	,"/board/board_editForm.boardFree"
	,"/board/board_delete.boardFree"
	,"/board/board_edit.boardTeam"
	,"/board/board_editForm.boardTeam"
	,"/board/board_delete.boardTeam"
	,"/board/board_edit.boardAsk"
	,"/board/board_delete.boardAsk"
	})
public class BoardAuthenticationFilter extends MypageAuthenticationFilter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		String subject = request.getParameter("subject");
		
		if(userId == null) {
			
			super.doFilter(request, response, chain);
			return;
			
		} else if((boolean)session.getAttribute("adminCheck")) {
			
			chain.doFilter(request, response);
			return;
			
		} else {
			
			String writer = request.getParameter("writer");
			
			if(writer == null || !writer.equals(userId)) {
				
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('권한이 없습니다.');");
				out.println("location.href='"+ request.getContextPath() +"/board/board_list.board"+ subject + "';");
				out.println("</script>");
				
				return;
			} 
			
		}
		
		
		chain.doFilter(request, response);	
		
	}
	
}
