<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../include/header.jsp" %> <!-- 헤더를 포함하여 공통 레이아웃 유지 -->
<body>
    <div class="jinseok-wrap">
        <div class="sum">
            <div class="nav">
                <ul>
                    <li><span class="nav-title">마이페이지</span></li>
                    <li><a href="${pageContext.request.contextPath}/mypage/getUserInfo.userinfo">내 정보</a></li>
                    <li><a href="${pageContext.request.contextPath}/mypage/reservationInfo.userinfo" class="tap">예약 현황</a></li>
                    <li><a href="${pageContext.request.contextPath}/mypage/deleteUserPage.userinfo">회원 탈퇴</a></li>
                </ul>
            </div>
            <div class="reservation-check">
                <p>예약 현황</p>

                <div class="container res-list">
                    <h2>다음달 예약 내역</h2>
                    <hr>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>예약 ID</th>
                                <th>예약자 이름</th>
                                <th>공연 날짜</th>
                                <th>장소</th>
                                <th>상태</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="reservation" items="${nextMonthReservations}"> <!-- nextMonthReservations 변수 반복 -->
                                <tr class="accordion-toggle" data-toggle="collapse" data-target="#collapse${reservation.resNum}" aria-expanded="false" aria-controls="collapse${reservation.resNum}">
                                    <td>${reservation.resNum}</td>
                                    <td>${reservation.userName}</td>
                                    <td>${reservation.resDate}</td>
                                    <td>${reservation.locaId}</td>
                                    <td class="resResult">${reservation.resResult}</td> <!-- 상태값이 W, T, F 중 하나 -->
                                </tr>
                                <tr id="collapse${reservation.resNum}" class="collapse">
                                    <td colspan="5">
                                        <div class="panel-body">
                                            <p>시설물: ${reservation.resAmp}</p>
                                            <p>공연 내용: ${reservation.resContent}</p>
                                            <p>인원수: ${reservation.resCount}</p>
                                            <p>휴대폰번호: ${reservation.userPno}</p>
                                            <p>이메일: ${reservation.userEmail}</p>
                                            <p>주소: ${reservation.userAddr}</p>
                                            <p>시간: ${reservation.resTime}</p>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

                <div class="container res-list">
                    <h2>예약 전체 내역</h2>
                    <hr>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>예약 ID</th>
                                <th>예약자 이름</th>
                                <th>공연 날짜</th>
                                <th>장소</th>
                                <th>상태</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="reservation" items="${allReservations}"> <!-- allReservations 변수 반복 -->
                                <tr class="accordion-toggle" data-toggle="collapse" data-target="#collapseAll${reservation.resNum}" aria-expanded="false" aria-controls="collapseAll${reservation.resNum}">
                                    <td>${reservation.resNum}</td>
                                    <td>${reservation.userName}</td>
                                    <td>${reservation.resDate}</td>
                                    <td>${reservation.locaId}</td>
                                    <td class="resResult">${reservation.resResult}</td> <!-- 상태값이 W, T, F 중 하나 -->
                                </tr>
                                <tr id="collapseAll${reservation.resNum}" class="collapse">
                                    <td colspan="5">
                                        <div class="panel-body">
                                            <p>시설물: ${reservation.resAmp}</p>
                                            <p>공연 내용: ${reservation.resContent}</p>
                                            <p>인원수: ${reservation.resCount}</p>
                                            <p>휴대폰번호: ${reservation.userPno}</p>
                                            <p>이메일: ${reservation.userEmail}</p>
                                            <p>주소: ${reservation.userAddr}</p>
                                            <p>시간: ${reservation.resTime}</p>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- jQuery 로드 -->
<script>
    $(document).ready(function() { <!-- DOMContentLoaded와 동일하게 사용 -->
        $('.accordion-toggle').click(function(event) {
            if ($(this).is('button') || $(this).closest('button').length > 0) {
                return;
            }
            $(this).next('.collapse').collapse('toggle'); <!-- 클릭 시 collapse 클래스 토글 -->
        });

        $('.modify').click(function(event) {
            event.stopPropagation();
            $(this).closest('tr').next('.collapse').collapse('hide'); <!-- 수정 버튼 클릭 시 토글 해제 -->
        });

        $('.resResult').each(function() {
            var status = $(this).text(); <!-- 상태 값을 읽어옴 -->
            if (status === 'W') {
                $(this).text('수락 대기중'); <!-- 상태값이 W인 경우 텍스트 변경 -->
            } else if (status === 'T') {
                $(this).text('수락됨'); <!-- 상태값이 T인 경우 텍스트 변경 -->
            } else {
                $(this).text('거절됨'); <!-- 그 외의 경우 텍스트 변경 -->
            }
        });
    });
</script>
<%@ include file="../include/footer.jsp" %>