<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- 부트스트랩 css링크 -->
    <link rel="stylesheet" href="../resources/css/customer_center/bootstrap.min.css">
    <!-- 제이쿼리(부스트랩보다 먼저 링크) -->
    <script src="../resources/js/customer_center_js/jquery-3.7.1.min.js"></script>
    <!-- 부트스트랩 js링크 -->
    <script src="../resources/js/customer_center_js/bootstrap.min.js"></script>

    <!-- 커스터마이징 한 css 디자인 추가 -->
    <link rel="stylesheet" href="../resources/css/custom-reset.css">
    <link rel="stylesheet" href="../resources/css/default.css">
    <link rel="stylesheet" href="../resources/css/customer_center/customer_center_board_free_list.css">




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
                            <h2>공지사항</h2>
                        </div>

                        <p>관리자만 작성 가능, 글번호, 월별 허가된 공연 목록</p>

                        <div class="table-responsive">
                            <!-- 게시판 -->

                            <!-- 가져온 코드 -->

                            <section id="board_free_list_wrap">
                                <div class="wrap_board_free">
                                    <div class="wrap_board_free_list">
                                        <div class="board_free_list_box">

                                            <table class="board_free_list_content" id="layout1">
                                                <div id="board_font" >
                                                    <thead>
                                                        <tr>
                                                            <th class="nth1">글 번호</th>
                                                            <th class="nth2">작성자</th>
                                                            <th class="nth3">제목</th>
                                                            <th class="nth4">날짜</th>
                                                            <th class="nth5">조회수</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <!--데이터 받아오기-->
                                                        
                                                        
											

								                        <c:forEach var="dto" items="${noticeList }">
															<tr>
																<td>${dto.noticeNum }</td>
																<td>${dto.managerId }</td>																
																<td><a href="board_notice_content.board?noticeNum=${dto.noticeNum }">${dto.noticeTitle }</a></td>
																<td><fmt:formatDate value="${dto.noticeRegdate }" pattern="yy.MM.dd"/></td>
																<td>${dto.noticeHit }</td>
															</tr>
														</c:forEach>
							
                                                    </tbody>
                                                </div>
                                            </table>

                                            <!-- 페이지 번호 -->
                                            <div class="page_nav" id="page_num123">
                                                <ul class="center">
                                                    <li><a href="첫페이지"><img src="../resources/img/ico_first.gif" alt="처음페이지"></a>
                                                    </li>
                                                    <li><a href="이전페이지"><img src="../resources/img/ico_prev.gif" alt="이전페이지"></a>
                                                    </li>
                                                    <li><a href="2페이지링크" title="1페이지">1</a></li>
                                                    <li><a href="2페이지링크" title="2페이지">2</a></li>
                                                    <li><a href="3페이지링크" title="3페이지">3</a></li>
                                                    <li><a href="4페이지링크" title="4페이지">4</a></li>
                                                    <li><a href="5페이지링크" title="5페이지">5</a></li>
                                                    <li><a href="다음페이지"><img src="../resources/img/ico_next.gif" alt="다음페이지"></a>
                                                    </li>
                                                    <li><a href="마지막페이지"><img src="../resources/img/ico_last.gif" alt="마지막페이지"></a>
                                                    </li>
                                                </ul>
                                                <form action="customer_center_index_write.jsp" class="right">
                                                    <button value="글쓰기" onclick="">작성</button>
                                                </form>
                                            </div>

                                            <div class="board_free_search" id="layout3">
                                                <select class="board_free_search_box">
                                                    <option value="notice">전체</option>
                                                    <option value="writer">작성자</option>
                                                    <option value="title">제목</option>
                                                    <option value="content">내용</option>
                                                </select>
                                                <input placeholder="검색어를 입력해 주세요" type="text">
                                                <span>
                                                    <button class="btn" onclick="실행할JS함수/검색기능" type="submit">검색</button>
                                                </span>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </section>




                            <!-- 페이지 번호 -->
                            <!-- <ul class="pagination">
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                            </ul> -->

                            <!-- 글작성 버튼 -->
                            <!-- <div class="write-button">
                                <a href="customer_center_index_write.jsp"><button type="button" class="btn write1"
                                        id="">글작성</button></a>
                            </div> -->

                        </div>
                    </div>
                </div>
            </div>


        </div>
    </section>

    <!-- footer -->
   	
    
<%@ include file="../include/footer.jsp"%>


</body>


</html>