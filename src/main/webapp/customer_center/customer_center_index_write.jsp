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
    <link rel="stylesheet" href="../resources/css/customer_center/customer_center_board_free_list.css">

    <!-- header,footer -->
    <link rel="stylesheet" href="../resources/css/customer_center/customer_center_header_footer.css">

	<!-- 글작성하는 곳 속성 -->
    <link rel="stylesheet" href="../resources/css/customer_center/customer_center_index_board.css">
    
</head>


<body>
<%@ include file="../include/header.jsp"%>

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

            <!-- 공지사항 게시판 -->
            <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 board">
                <div class="service-board">
                    <div class="container">
                        <div class="page-header">

                            <h2>글 작성하기</h2>

                        </div>
                        <!-- 글작성하기 -->
                        <form action="registForm.customerBoard" method="post" class="form">

                            <!-- 글 제목 -->
                            <div>
                                <label for="comment">제목</label>
                                <br>
                                <input class="" type="text" name="title" placeholder="제목을 입력해주세요">

                            </div>

                            <!-- 글 내용 -->
                            <div class="form-group">
                                <label for="comment">글 내용</label>
                                <textarea class="form-control" id="comment" placeholder="내용을 입력해주세요"></textarea>
                            </div>

                            <!-- 완료 버튼-->
                            <div class="board_button_set">
                                <div class="board-button">
                                    <a href="customer_center_index.jsp"><button type="button"
                                            class="btn btn-default">목록</button></a>
                                </div>

                                <div class="board-button">
                                    <a href="registForm.customer_board"><button type="button"
                                            class="btn btn-default">완료</button></a>
                                </div>
                            </div>
                        </form>



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
