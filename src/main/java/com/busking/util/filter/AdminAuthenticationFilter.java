package com.busking.util.filter;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.busking.mypage.model.UserJoinDTO;

@WebFilter({"/customer_center/regist.customer", "/customer_center/modify.customer"})
public class AdminAuthenticationFilter implements Filter {

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest) req; 
		HttpServletResponse response = (HttpServletResponse) res;
		HttpSession session = request.getSession();
		
Boolean adminCheck = (Boolean) session.getAttribute("adminCheck");
        
        if (adminCheck == null || !adminCheck) {
            if (request.getRequestURI().endsWith("/delete.customer")) {
                response.setContentType("text/html; charset=UTF-8;");
                PrintWriter out = response.getWriter();
                out.println("<script>");
                out.println("alert('관리자만 삭제할 수 있습니다.');");
                out.println("location.href='" + request.getContextPath() + "/customer_center/customer_center_index.customer';");
                out.println("</script>");
                return;
            }
            
            response.setContentType("text/html; charset=UTF-8;");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('관리자만 접근할 수 있습니다.');");
            out.println("location.href='" + request.getContextPath() + "/customer_center/customer_center_index.customer';");
            out.println("</script>");
            return;
        }

        chain.doFilter(request, response);// 다음 필터로 연결
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // 필터 초기화 코드
    }

    @Override
    public void destroy() {
        // 필터 종료 코드
    }
}