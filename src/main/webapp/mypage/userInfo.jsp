<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <script src="../js/jquery-3.7.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../resources/css/memberInfo.css">


</head>
<body>
    <header>헤더</header>
    <div class="wrap">
        <h3>회원 정보 확인</h3>
        <div class="sum">
            <div class="nav">
                <ul>
                    <li><a href="userInfo.jsp" class="tap">내정보 확인</a></li>
                    <li><a href="userInfoEdit.jsp">정보 수정</a></li>
                    <li><a href="reservationCheck.jsp">예약 현황</a></li>
                    <li><a href="#">회원 탈퇴</a></li>
                </ul>
            </div>
            <div class="info">
                <ul class="info-name">
                    <li>아이디</li>
                    <li>닉네임</li>
                    <li>주소</li>
                    <li>생년월일</li>
                    <li>전화번호</li>
                </ul>
                <ul class="info-text">
                    <li>...</li>
                    <li>...</li>
                    <li>...</li>
                    <li>...</li>
                    <li>...</li>
                </ul>
            </div>
        </div>
        
    </div>
</body>
</html>