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
    <link rel="stylesheet" href="../resources/css/reservationCheck.css">


</head>
<body>
    <header>헤더</header>
    <div class="wrap">
        <h3>예약 현황</h3>
        <div class="sum">
            <div class="nav">
                <ul>
                    <li><a href="userInfo.jsp">내정보 확인</a></li>
                    <li><a href="userInfoEdit.jsp">정보 수정</a></li>
                    <li><a href="reservationCheck.jsp" class="tap">예약 현황</a></li>
                    <li><a href="#">회원 탈퇴</a></li>
                </ul>
            </div>
            <div class="info">
                <div class="circle">circle</div>
                <div class="circle">circle</div>
                <div class="circle">circle</div>
                <div class="container">
                    <h2>예약현황</h2>
                    <table class="table">
                      <thead>
                        <tr>
                          <th>Firstname</th>
                          <th>Lastname</th>
                          <th>Email</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>John</td>
                          <td>Doe</td>
                          <td>john@example.com</td>
                        </tr>
                        <tr>
                          <td>Mary</td>
                          <td>Moe</td>
                          <td>mary@example.com</td>
                        </tr>
                        <tr>
                          <td>July</td>
                          <td>Dooley</td>
                          <td>july@example.com</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
            </div>
        </div>
        
    </div>
</body>
</html>