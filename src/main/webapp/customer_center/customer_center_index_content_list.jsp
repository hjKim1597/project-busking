<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/css/customer_center/customer_center_index.css">

    <!-- 부트스트랩 css링크 -->
    <link rel="stylesheet" href="../resources/css/customer_center/bootstrap.min.css">
    <!-- 제이쿼리(부스트랩보다 먼저 링크) -->
    <script src="../resources/js/customer_center_js/jquery-3.7.1.min.js"></script>
    <!-- 부트스트랩 js링크 -->
    <script src="../resources/js/customer_center_js/bootstrap.min.js"></script>

    <!-- 커스터마이징 한 css 디자인 추가 -->
    <link rel="stylesheet" href="../resources/css/custom-reset.css">
    <link rel="stylesheet" href="../resources/css/center_default.css">css">
    <link rel="stylesheet" href="../resources/css/customer_center/customer_center_default.css">

    <!-- header,footer -->
    <link rel="stylesheet" href="../resources/css/customer_center/customer_center_header_footer.css">

</head>

<%@ include file="../include/header.jsp"%>


<body>

  글 목록 페이지


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

    
<%@ include file="../include/footer.jsp"%>

</body>


</html>