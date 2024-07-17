<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/css/customer_center_css/customer_center_index.css">

    <!-- 부트스트랩 css링크 -->
    <link rel="stylesheet" href="../resources/css/customer_center_css/bootstrap.min.css">
    <!-- 제이쿼리(부스트랩보다 먼저 링크) -->
    <script src="../resources/js/customer_center_js/jquery-3.7.1.min.js"></script>
    <!-- 부트스트랩 js링크 -->
    <script src="../resources/js/customer_center_js/bootstrap.min.js"></script>

    <!-- 커스터마이징 한 css 디자인 추가 -->
    <link rel="stylesheet" href="../resources/css/customer_center_css/customer_center_custom-reset.css">
    <link rel="stylesheet" href="../resources/css/customer_center_css/index03.css">
    <link rel="stylesheet" href="../resources/css/customer_center_css/customer_center_default.css">

    <!-- header,footer -->
    <link rel="stylesheet" href="../resources/css/customer_center_css/customer_center_header_footer.css">

</head>

<body>

  글 목록 페이지

    <!-- header -->
    <header>
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
    </header>

    <!-- 중앙 레이아웃 -->
    <section class="container customer-center-width" id="change">
        <div class="row">

            <!-- 좌측메뉴 -->
            <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 content">
                <li class="col-xs-4 col-sm-4 col-lg-4 col-lg-4">
                    <section>
                        <div class="service_menu">
                            <nav>
                                <div class="span"></div>
                                <h1>고객센터</h1>
                                <ul class="menu">
                                    <li class="nth1"><strong><a href="customer_center_index.jsp">공지사항</a></strong>
                                    </li>
                                    <li class="nth2"><strong><a href="customer_center_month.jsp">이달의예약</a></strong>
                                    </li>
                                    <li class="nth3"><strong><a href="customer_center_guide.jsp">이용안내</a></strong>
                                    </li>
                                    <li class="nth4"><strong><a href="customer_center_FAQ.jsp"><span>자주묻는질문(FAQ)</span></a></strong>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </section>
                </li>
            </div>

            <!-- 공지사항 게시판 -->
            <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 board">
                <div class="service-board">
                    <div class="container">
                        <div class="page-header">
                            <h2>공지사항</h2>
                            
                        </div>
                        <p>관리자만 작성 가능, 글번호, 월별 허가된 공연 목록</p>
                        <div class="table-responsive">
                            <!-- 테이블 -->
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>글번호</th>
                                        <th>제목</th>
                                        <th>작성자</th>
                                        <th>작성날짜</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <div>
                                            <td>123</td>
                                            <td><a href="customer_center_index_content.jsp">공지사항1</a></td>
                                            <td>관리자</td>
                                            <td>2024-12-31</td>
                                        </div>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td><a href="customer_center_index_content.jsp">글 제목3</a></td>
                                        <td>관리자</td>
                                        <td>2024-01-01</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td><a href="customer_center_index_content.jsp">글 제목2</a></td>
                                        <td>관리자</td>
                                        <td>2024-01-01</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td><a href="customer_center_index_content.jsp">글 제목2</a></td>
                                        <td>관리자</td>
                                        <td>2024-01-01</td>
                                    </tr>

                                </tbody>
                            </table>

                            <!-- 페이지 번호 -->
                            <ul class="pagination">
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                            </ul>

                            <!-- 글작성 버튼 -->
                            <div class="write-button">
                                <a href="#" ><button type="button" class="btn write1" id="">글작성</button></a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 extra">
                <!-- 빈칸1 -->
            </div>

            <!-- <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 extra">
                빈칸2
            </div> -->

        </div>
    </section>

    <!-- footer -->
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