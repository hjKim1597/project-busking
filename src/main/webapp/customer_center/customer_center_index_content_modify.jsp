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

    <!-- header,footer -->
    <link rel="stylesheet" href="../resources/css/customer_center/customer_center_header_footer.css">

    <!-- 글 수정 스타일 -->
    <link rel="stylesheet" href="../resources/css/customer_center/customer_center_index_board.css">


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
                                    <li class="nth1"><strong><a href="customer_center_index.customer"><span>공지사항</span></a></strong>
                                    </li>
                                    <li class="nth2"><strong><a href="customer_center_month.customer"><span>이달의예약</span></a></strong>
                                    </li>
                                    <li class="nth3"><strong><a href="customer_center_guide.customer"><span>이용안내</span></a></strong>
                                    </li>
                                    <li class="nth4"><strong><a href="customer_center_FAQ.customer"><span>자주묻는질문(FAQ)</span></a></strong>
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
                            <h2>글 수정하기</h2>

                        </div>

						<!-- 글 업데이트 -->
                        <form action="update.customer" method="post" class="form">

                            <!-- 글 제목 -->
                            <div>
                                <label for="comment">제목</label>
                                <br>
                                <input class="" type="text" name="title" placeholder="내용을 입력해주세요" value="${dto.noticeTitle }">
								
                            </div>

                            <!-- 글 내용 -->
                            <div class="form-group">
                                <label for="comment">내용</label>
                                <textarea class="form-control" id="comment" name="content" placeholder="내용을 입력해주세요">${dto.noticeContent }</textarea>
                            
                            </div>

                            <!-- 완료 버튼-->
                            <div class="board_button_set">
                                <div class="board-button">
                                    <a href="${pageContext.request.contextPath }/customer_center/customer_center_index.customer"><button type="button"
                                            class="btn btn-default">목록</button></a>
                                </div>

                                <div class="board-button">
                                    <%-- <a href="${pageContext.request.contextPath }/customer_center/customer_center_index.customer">
                                    <button type="button"
                                            class="btn btn-default">
                                            완료
                                    </button>
                                    
                                    </a> --%>
                                    
                                    <input type="submit" value="완료" class="btn btn-default">
                                    
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