package com.busking.mypage.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.busking.mypage.model.ReservationCheckDTO;
import com.busking.mypage.model.ReservationCheckMapper;
import com.busking.mypage.model.UserJoinDTO;
import com.busking.mypage.model.UserJoinMapper;
import com.busking.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class MypageServiceImpl implements MypageService {
    private SqlSessionFactory sqlSessionFactory;
    
    public MypageServiceImpl() {
        this.sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
    }
    
    @Override
    public void updateUserInfo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String userPw = request.getParameter("userPw");
        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");
        String userPno = request.getParameter("userPno");
        String userAddr = request.getParameter("userAddr");
        String userGender = request.getParameter("userGender");    
        
        UserJoinDTO dto = new UserJoinDTO(userId, userPw, userName, userEmail, userPno, userAddr, userGender);
        
        SqlSession sqlSession = sqlSessionFactory.openSession(true);
        UserJoinMapper mapper = sqlSession.getMapper(UserJoinMapper.class);
        int result = mapper.updateUserInfo(dto);
        sqlSession.close();

        response.setContentType("text/html; charset=UTF-8;");
        PrintWriter out = response.getWriter();
        if (result == 1) {
            // 세션의 사용자 정보 업데이트
            HttpSession session = request.getSession();
            session.setAttribute("user", dto);
            out.println("<script>");
            out.println("alert('정보가 성공적으로 업데이트 되었습니다.');");
            out.println("location.href='" + request.getContextPath() + "/mypage/getUserInfo.userinfo';");
            out.println("</script>");
        } else {
            out.println("<script>");
            out.println("alert('정보 수정에 실패했습니다. 다시 시도해주세요.');");
            out.println("location.href='" + request.getContextPath() + "/mypage/userInfo.jsp';");
            out.println("</script>");
        }
    }

    @Override
    public void getUserInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserJoinDTO dto = (UserJoinDTO) session.getAttribute("user");

        if (dto != null) {
            String userId = dto.getUserId();

            SqlSession sqlSession = sqlSessionFactory.openSession();
            UserJoinMapper mapper = sqlSession.getMapper(UserJoinMapper.class);
            UserJoinDTO userInfo = mapper.getUserInfo(userId);
            sqlSession.close();

            request.setAttribute("userInfo", userInfo);
            request.getRequestDispatcher("/mypage/userInfo.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/mypage/login.jsp");
        }
    }
    
    @Override
    public void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserJoinDTO dto = (UserJoinDTO) session.getAttribute("user");
        String inputPw = request.getParameter("userPw");
        
        if (dto != null && dto.getUserPw().equals(inputPw)) {
            String userId = dto.getUserId();

            SqlSession sqlSession = sqlSessionFactory.openSession(true);
            UserJoinMapper mapper = sqlSession.getMapper(UserJoinMapper.class);
            int result = mapper.deleteUser(userId);
            sqlSession.close();

            PrintWriter out = response.getWriter();
            response.setContentType("text/html; charset=UTF-8;");
            if (result == 1) {
                session.invalidate();
                out.println("<script>");
                out.println("alert('정상적으로 회원 탈퇴가 완료되었습니다.');");
                out.println("location.href='../index.main';");
                out.println("</script>");
            } else {
                out.println("<script>");
                out.println("alert('회원 탈퇴에 실패했습니다. 다시 시도해주세요.');");
                out.println("location.href='deleteUserPage.userinfo';");
                out.println("</script>");
            }
        } else {
            response.setContentType("text/html; charset=UTF-8;");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('비밀번호가 일치하지 않습니다.');");
            out.println("location.href='deleteUser.jsp';");
            out.println("</script>");
        }
    }

    @Override
    public void getReservationInfo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userId = (String) session.getAttribute("userId");

        if (userId != null) {
            SqlSession sqlSession = sqlSessionFactory.openSession();
            ReservationCheckMapper mapper = sqlSession.getMapper(ReservationCheckMapper.class);
            List<ReservationCheckDTO> allReservations = mapper.getReservationInfo(userId);
            sqlSession.close();

            List<ReservationCheckDTO> nextMonthReservations = allReservations.stream()
                    .filter(reservation -> reservation.getResDate().toLocalDate().getMonthValue() == java.time.LocalDate.now().plusMonths(1).getMonthValue())
                    .collect(Collectors.toList());

            request.setAttribute("allReservations", allReservations);
            request.setAttribute("nextMonthReservations", nextMonthReservations);
            request.getRequestDispatcher("/mypage/reservationCheck.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/userjoin/loginPage.mypage");
        }
    }
}