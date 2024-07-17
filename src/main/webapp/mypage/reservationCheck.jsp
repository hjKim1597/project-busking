<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../resources/css/mypage/reservationCheck.css">
    <link rel="stylesheet" href="../resources/css/headerfooter/default_main.css">
    <link rel="stylesheet" href="../resources/css/headerfooter/main.css">


</head>
<body>
  
    <div class="jinseok-wrap">
        <div class="sum">
            <div class="nav">
                <ul>
                    <li><a href="userInfo.jsp">내 정보</a></li>
                    <li><a href="reservationCheck.jsp" class="tap">예약 현황</a></li>
                    <li><a href="deleteUser.jsp">회원 탈퇴</a></li>
                </ul>
            </div>
            
            <div class="reservation-check">
                <p>예약 현황</p>
                
                <div class="container res-list">
                    <h2>현재 예약 정보</h2>
                    <hr>
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th>버스킹</th>
                          <th>지역</th>
                          <th>버스킹 주제</th>
                          <th>신청 승락 여부</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>John</td>
                          <td>잠실대교</td>
                          <td>음악</td>
                          <td>대기중</td>
                        </tr>
                        <tr>
                          <td>John</td>
                          <td>잠실대교</td>
                          <td>음악</td>
                          <td>대기중</td>
                        </tr>
                        <tr>
                          <td>John</td>
                          <td>잠실대교</td>
                          <td>음악</td>
                          <td>대기중</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                <div class="container res-list">
                  <h2>예약 전체 내역</h2>
                  <hr>
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th>버스킹</th>
                        <th>지역</th>
                        <th>버스킹 주제</th>
                        <th>신청 승락 여부</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>John</td>
                        <td>잠실대교</td>
                        <td>음악</td>
                        <td>대기중</td>
                      </tr>
                      <tr>
                        <td>John</td>
                        <td>잠실대교</td>
                        <td>음악</td>
                        <td>대기중</td>
                      </tr>
                      <tr>
                        <td>John</td>
                        <td>잠실대교</td>
                        <td>음악</td>
                        <td>대기중</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
            </div>
        </div>
    </div>

</body>
</html>