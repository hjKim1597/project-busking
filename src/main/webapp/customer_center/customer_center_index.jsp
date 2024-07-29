<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../include/header.jsp"%>

    <!-- 중앙 레이아웃 -->
    <section class="container customer-center-width" id="change">
        <!-- 좌측메뉴 -->
        <div class="board_nav">
            <div id="board_nav_wrap">
             <h1>고객센터</h1>
             <ul class="menu">
                 <li class="nth1"><strong><a href="customer_center_index.customer"><span>공지사항</span></a></strong>
                 </li>
                 <li class="nth2"><strong><a href="customer_center_res.customer"><span>이달의 예약</span></a></strong>
                 </li>
                 <li class="nth3"><strong><a href="customer_center_guide.customer"><span>이용안내</span></a></strong>
                 </li>
                 <li class="nth4"><strong><a href="customer_center_FAQ.customer"><span>자주묻는질문(FAQ)</span></a></strong>
                 </li>
             </ul>
            </div>
        </div>

        <!-- 공지사항 게시판 -->
        <div class="board">
            <div class="service-board">
                <div class="container">
                    <div class="page-header">
                        <h2>공지사항</h2>
                    </div>

<!--                         <p>관리자만 작성 가능, 글번호, 월별 허가된 공연 목록</p>
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
                                                        <th class="nth2">작성자</th>
                                                        <th class="nth3">제목</th>
                                                        <th class="nth4">날짜</th>
                                                        <th class="nth5">조회수</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <!--데이터 받아오기-->
                                                    
                                                    <%-- <c:forEach var="dto" items="${noticeList }">
											<tr>
												<td>${dto.noticeNum }</td>
												<td>${dto.managerId }</td>
												<td>
													<!-- 17) get으로 값 넘기기 href="getContent.board?키=값" 으로 --> 
													<a href="getContent.board?bno=${dto.bno} ">${dto.title }</a>
												</td>
												<td><fmt:formatDate value="${dto.regdate }"
														pattern="yyyy년 MM월 dd일 HH시 mm분 ss초" /></td>
												<td>${dto.hit }</td>
											</tr>
										</c:forEach> --%>
                                           			
				                        <c:forEach var="dto" items="${noticeList }">
											<tr>
												<td>${dto.noticeNum }</td>
												<td>${dto.managerId }</td>																
												<td><a href="getContent.customer?noticeNum=${dto.noticeNum }">${dto.noticeTitle }</a></td>
												<td><fmt:formatDate value="${dto.noticeRegdate }" pattern="yy.MM.dd"/></td>
												<td>${dto.noticeHit }</td>
											</tr>
										</c:forEach>
			
                                                </tbody>
                                            </div>
                                        </table>

                                        <!-- 페이지 번호 -->
                                        <div class="page_nav">
	                <ul class="center">
	                	<c:choose>
		                	<c:when test="${!pageVO.first }">
								<li id="page_first">
									<a href="customer_center_index.customer">
										<i class="fa-solid fa-angles-left"></i>
									</a>
								</li>
							</c:when>
							<c:otherwise>
								<li id="page_first">
									<div class="page_link">
										<i class="fa-solid fa-angles-left" style="color: #daeede;"></i>
									</div>
								</li>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${!pageVO.first }">
								<li id="page_prev">
									<a href="customer_center_index.customer?page=${pageVO.pageNum - 1 }">
										<i class="fa-solid fa-angle-left"></i>
									</a>
								</li>
							</c:when>
							<c:otherwise>
								<li id="page_prev">
									<div class="page_link">
										<i class="fa-solid fa-angle-left" style="color: #daeede;"></i>
									</div>
								</li>
							</c:otherwise>
						</c:choose>
						
						<c:forEach var="i" begin="${pageVO.startPage }" end="${pageVO.endPage }" step="1">
							<li class="page_li" data-page="${i }">
								<a href="customer_center_index.customer?page=${i }" title="1페이지">${i }</a>
							</li>
						</c:forEach>
						
						<c:choose>
		                	<c:when test="${!pageVO.last }">
								<li id="page_next">
									<a href="customer_center_index.customer?page=${pageVO.pageNum + 1}">
										<i class="fa-solid fa-angle-right"></i>
									</a>
								</li>
							</c:when>
							<c:otherwise>
								<li id="page_next">
									<div class="page_link">
										<i class="fa-solid fa-angle-right" style="color: #daeede;"></i>
									</div>
								</li>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${!pageVO.last }">
								<li id="page_last">
									<a href="customer_center_index.customer?page=${pageVO.realEndPage }">
										<i class="fa-solid fa-angles-right"></i>
									</a>
								</li>
							</c:when>
							<c:otherwise>
								<li id="page_last">
									<div class="page_link">
										<i class="fa-solid fa-angles-right" style="color: #daeede;"></i>
									</div>
								</li>
							</c:otherwise>
						</c:choose>
					</ul>
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
