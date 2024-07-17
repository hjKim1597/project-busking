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
  <header class="index-header">
    <div class="header-wrap">
        <div class="index-top">

            <div class="top-img">
                <img src="img/project_logo.png" style="max-width: 100%; height: auto;" alt="로고사진">
            </div>

            <div class="top-left">
                사이트명
            </div>

            <div class="index-menu">
                <ul>
                    <li><a href="#">Main</a></li>
                    <li><a href="#">자유게시판</a></li>
                    <li><a href="#">예약하기</a></li>
                    <li><a href="#">마이페이지</a></li>
                    <li><a href="#">고객센터</a></li>


                </ul>
            </div>

            <div class="index-top-right">
                <ul>
                    <li><a href="#">로그인</a></li>
                    <li><a href="#">회원가입</a></li>

                </ul>
            </div>
        </div>
    </div>
</header>
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
    <footer class="index-footer">
      <div class="index-footer-top">
          <div class="footer-service">
              <h4>서비스</h4>
              <ul>
                  <li><a href="#">개발자용 프로그래머스</a></li>
                  <li><a href="#">기업용 프로그래머스</a></li>
              </ul>
          </div>

          <div class="footer-faq">
              <h4>문의</h4>
              <ul>
                  <li><a href="#">FAQ/문의</a></li>
                  <li><a href="#">교육 결제, 환불 관련 문의</a></li>
              </ul>
          </div>

          <div class="footer-cscenter">
              <h4>고객센터</h4>
              <p>대표번호:1533-1886</p>
              <p>운영시간: 오전 9시 ~ 오후 6시 (주말 및 공휴일 휴무)</p>
              <p>점심시간: 오후 12시 ~ 오후 1시</p>
          </div>

          <div class="footer-familysite">
              <select>
                  <option value="">패밀리사이트</option>
              </select>
          </div>
      </div>
      <div class="footer-mid">
          <div>
              <p>2024 (사이트명)</p>
          </div>
      </div>
      <div class="footer-bottom">
          <div class="footer-info">
              <p>(회사명) / (팀명) / (주소) / (팀원명)</p>
              <p>(사이트명) 사이트의 모든 콘텐츠, 정보, UI, HTML 소스 등에 대한 무단 복제, 전송, 배포, 크롤링, 스크래핑 등의 행위를 거부하며, 이러한 행위는 관련 법령에 의해
                  엄격히 금지됩니다.</p>
              <p><a href="https://icons8.kr/icons" class="footer-icon">Designed by Agency. Icons by Icons8</a> |
                  <a href="#" style="color: #999; text-decoration: none;">개인정보 처리방침</a> | <a href="#"
                      style="color: #999; text-decoration: none;">이용약관</a> | (사이트명)
              </p>


          </div>
      </div>
  </footer>
</body>
</html>