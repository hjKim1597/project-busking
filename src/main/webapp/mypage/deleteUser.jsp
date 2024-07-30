<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../include/header.jsp" %>
<body>
    <div class="jinseok-wrap">
        <div class="sum">
            <div class="nav">
                <ul>
                    <li><span class="nav-title">마이페이지</span></li>
                    <li><a href="${pageContext.request.contextPath}/mypage/getUserInfo.userinfo">내 정보</a></li>
                    <li><a href="${pageContext.request.contextPath}/mypage/reservationInfo.userinfo">예약 현황</a></li>
                    <li><a href="${pageContext.request.contextPath}/mypage/deleteUserPage.userinfo" class="tap">회원 탈퇴</a></li>
                </ul>
            </div>
            <div class="deleteUser">
                <p>회원 탈퇴</p>
                <form id="deleteUserForm" action="${pageContext.request.contextPath}/mypage/deleteUser.userinfo" method="post">
                    <div class="form-group">
                        <label for="pwd">회원 탈퇴를 진행하시려면 비밀번호를 입력하세요.</label>
                        <input type="password" class="form-control" id="pwd" name="userPw" required>
                    </div>
                    <input type="submit" class="jinseok-button" value="탈퇴하기"></input>
                </form>
            </div>
        </div>
    </div>
<%@ include file="../include/footer.jsp" %>