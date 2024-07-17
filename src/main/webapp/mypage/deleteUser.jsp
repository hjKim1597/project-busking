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
                    <li><a href="userInfo.jsp">내 정보</a></li>
                    <li><a href="reservationCheck.jsp">예약 현황</a></li>
                    <li><a href="deleteUser.jsp" class="tap">회원 탈퇴</a></li>
                </ul>
            </div>
            <div class="deleteUser">
                <p>회원 탈퇴</p>
                <div class="form-group">
                    <label for="pwd">회원 탈퇴를 진행하시려면 비밀번호를 입력하세요.</label>
                    <input type="password" class="form-control" id="pwd">
                </div>
                <input type="button" class="jinseok-button" value="탈퇴하기"></input>            </div>
        </div>
    </div>
<%@ include file="../include/footer.jsp" %>