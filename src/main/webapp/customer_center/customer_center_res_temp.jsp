<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
    <link rel="stylesheet" href="../resources/css/customer_center/board_free_list.css">

    <!-- header,footer -->
    <link rel="stylesheet" href="../resources/css/customer_center/customer_center_header_footer.css">

</head>

<%@ include file="../include/header.jsp"%>



    <!-- 레이아웃 -->
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
                                    <li class="nth2"><strong><a href="customer_center_res.customer"><span>이달의 예약</span></a></strong>
                                    </li>
                                    <li class="nth3"><strong><a href="customer_center_guide.customer"><span>이용안내</span></a></strong>
                                    </li>
                                    <li class="nth4"><strong><a href="customer_center_FAQ.customer"><span>FAQ</span></a></strong>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </section>
                </li>
            </div>

			<!-- 공지사항 게시판 -->
            <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 board">
                <div class="service-board" >
                    <div class="container">
                        <div class="page-header">
                            <h2>이달의 예약</h2>
                        </div>

<!--                         <p>예약리스트</p>
 -->
                        <div class="table-responsive">
                            <!-- 게시판 -->


                            <section id="board_free_list_wrap">
                                <div class="wrap_board_free">
                                    <div class="wrap_board_free_list">
                                        <div class="board_free_list_box">

                                            <table class="board_free_list_content" id="layout1">
                                                <div id="board_font" >
                                                    <thead>
                                                        <tr>
                                                            <th class="nth1">글 번호</th>
                                                            <th class="nth2">신청자</th>
                                                            <th class="nth3">예약 날짜 및 시간</th>
                                                            <th class="nth4">장소</th>
                                                            <th class="nth5">신청 날짜</th>
                                                            
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <!--데이터 받아오기-->
														<!--나중에 xml 매퍼에서 F를 T로 수정할것  -->
			
								                        <c:forEach var="dto" items="${resList }">
															
															<tr>
																<td>${dto.resNum }</td>
																<td>${dto.userId }</td>																
																<td><a href="getResContent.customer?resNum=${dto.resNum }">${dto.resDate }</a></td>
																<td>${dto.locaName }</td>
																<td><fmt:formatDate value="${dto.resRegdate }" pattern="yy.MM.dd"/></td>
																	
															</tr>
															
														</c:forEach>

                                                    </tbody>
                                                </div>
                                            </table>

                                            <!-- 페이지 번호 -->
                                            <div class="page_nav" id="page_num123">
                                                <ul class="center">
						                            <li id="page_first"><a href="customer_center_index.customer"><img src="../resources/img/board_img/ico_first.gif" alt="처음페이지"></a></li>
						                            <c:if test="${pageVO.prev }">
							                            <li id="page_prev"><a href="customer_center_index.customer?page=${pageVO.pageNum - 1 }"><img src="../resources/img/board_img/ico_prev.gif" alt="이전페이지"></a></li>                            
						                            </c:if>
						                            <c:forEach var="i" begin="${pageVO.startPage }" end="${pageVO.endPage }" step="1">
						                            	<li class="page_li" data-page="${i }"><a href="customer_center_index.customer?page=${i }" title="1페이지">${i }</a></li>	
						                            </c:forEach>
						                            <c:if test="${pageVO.next }">
							                            <li id="page_next"><a href="customer_center_index.customer?page=${pageVO.pageNum + 1 }"><img src="../resources/img/board_img/ico_next.gif" alt="다음페이지"></a></li>
						                            </c:if>
						                            <li id="page_last"><a href="customer_center_index.customer?page=${pageVO.endPage }"><img src="../resources/img/board_img/ico_last.gif" alt="마지막페이지"></a></li>
						                        </ul>
						                        
						                        
                                                <!-- 
                                                <form action="customer_center_FAQ_write.jsp" class="right">
                                                    <button value="글쓰기" onclick="">작성</button>
                                                </form> 
                                                -->
                                                
                                                
                                            </div>

                                            <!-- 검색
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
                                            -->

                                        </div>
                                    </div>
                                </div>
                            </section>


                        </div>
                    </div>
                </div>
            </div>
            
            

        </div>
    </section>

    <!-- footer -->
    <script>
	    var pageNum = '${page}';
	    var pageFirst;
	    var pageUl = document.querySelector(".page_nav .center");
	
	    var pageItems = pageUl.querySelectorAll(".page_li");
	    Array.from(pageItems)
	    	 .filter(i => i.dataset.page == pageNum)
	    	 .forEach(item => item.classList.add("active"));
    
    </script>
    
<%@ include file="../include/footer.jsp"%>

</body>


</html>