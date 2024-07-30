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

@WebFilter({"/mypage/getUserInfo.userinfo",
            "/mypage/updateUserInfo.userinfo",
            "/mypage/deleteUser.userinfo",
            "/mypage/deleteUserPage.userinfo",
            "/mypage/reservationInfo.userinfo",
            "/board/board_write.boardAsk",
            "/board/board_writeForm.boardAsk",
            "/board/board_edit.boardAsk",
            "/board/board_delete.boardAsk",
            "/board/board_write.boardFree",
            "/board/board_writeForm.boardFree",
            "/board/board_edit.boardFree",
            "/board/board_editForm.boardFree",
            "/board/board_delete.boardFree",
            "/board/board_like.boardFree",
            "/board/board_write.boardNews",
            "/board/board_writeForm.boardNews",
            "/board/board_edit.boardNews",
            "/board/board_editForm.boardNews",
            "/board/board_delete.boardNews",
            "/board/board_like.boardNews",
            "/board/board_write.boardTeam",
            "/board/board_writeForm.boardTeam",
            "/board/board_delete.boardTeam",
            "/board/board_edit.boardTeam",
            "/board/board_editForm.boardTeam",
            "/board/board_comment_ask_write.comment"
})
public class MypageAuthenticationFilter implements Filter {

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        HttpSession session = request.getSession();

        // 사용자 정보를 세션에서 가져옴
        UserJoinDTO user = (UserJoinDTO) session.getAttribute("user");

        // 디버깅 메시지 출력
        if (user != null) {
            System.out.println("User ID: " + user.getUserId());
        } else {
            System.out.println("User not found in session.");
        }

        if (user == null || user.getUserId() == null) {
            response.setContentType("text/html; charset=UTF-8;");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('로그인이 필요한 서비스 입니다');");
            out.println("location.href='" + request.getContextPath() + "/userjoin/loginPage.mypage';");
            out.println("</script>");

            return;
        }

        chain.doFilter(request, response); // 다음 필터로 연결
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