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
    <link rel="stylesheet" href="../resources/css/center_default.css">
    <link rel="stylesheet" href="../resources/css/customer_center/customer_center_index_board.css">


    <!-- header,footer -->
    <link rel="stylesheet" href="../resources/css/customer_center/customer_center_header_footer.css">

</head>

<%@ include file="../include/header.jsp"%>


<body>

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
                                    <li class="nth1"><strong><a href="customer_center_index.jsp"><span>공지사항</span></a></strong>
                                    </li>
                                    <li class="nth2"><strong><a href="customer_center_month.jsp"><span>이달의예약</span></a></strong>
                                    </li>
                                    <li class="nth3"><strong><a href="customer_center_guide.jsp"><span>이용안내</span></a></strong>
                                    </li>
                                    <li class="nth4"><strong><a href="customer_center_FAQ.jsp"><span>자주묻는질문(FAQ)</span></a></strong>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </section>
                </li>
            </div>

            <!-- 공지사항 게시판 > 게시글 내용 보는 곳 -->
            <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 board">
                <div class="service-board">
                    <div class="container">
                        <div class="page-header">
                            <h2>공지사항</h2>
                        </div>
                        <p>게시글 내용 보는 페이지</p>

                        <!-- 글 내용 -->
                        <div class="panel panel-default">
                            <div class="panel-heading">글 제목</div>
                            <div class="panel-body">
                                <p>
                                    내용 예시
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                                    Ipsum has been the industry's standard dummy text ever since the 1500s, when an
                                    unknown printer took a galley of type and scrambled it to make a type specimen book.
                                    It has survived not only five centuries, but also the leap into electronic
                                    typesetting, remaining essentially unchanged. It was popularised in the 1960s with
                                    the release of Letraset sheets containing Lorem Ipsum passages, and more recently
                                    with desktop publishing software like Aldus PageMaker including versions of Lorem
                                    Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when
                                    an unknown printer took a galley of type and scrambled it to make a type specimen
                                    book. It has survived not only five centuries, but also the leap into electronic
                                    typesetting, remaining essentially unchanged. It was popularised in the 1960s with
                                    the release of Letraset sheets containing Lorem Ipsum passages, and more recently
                                    with desktop publishing software like Aldus PageMaker including versions of Lorem
                                    Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when
                                    an unknown printer took a galley of type and scrambled it to make a type specimen
                                    book. It has survived not only five centuries, but also the leap into electronic
                                    typesetting, remaining essentially unchanged. It was popularised in the 1960s with
                                    the release of Letraset sheets containing Lorem Ipsum passages, and more recently
                                    with desktop publishing software like Aldus PageMaker including versions of Lorem
                                    Ipsum.

                                </p>
                            </div>

                            <!-- 글 목록, 수정, 삭제 버튼-->
                            <div class="board_button_set">
                                <div class="board-button">
                                    <a href="customer_center_index.jsp"><button type="button"
                                            class="btn btn-default">목록</button></a>
                                </div>

                                <div class="board-button">
                                    <a href="customer_center_index_content_modify.jsp"><button type="button"
                                            class="btn btn-default">수정</button></a>
                                </div>

                                <div class="board-button">
                                    <button type="button" class="btn btn-default"
                                        onclick="alert('삭제되었습니다');">삭제</button>
                                </div>
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