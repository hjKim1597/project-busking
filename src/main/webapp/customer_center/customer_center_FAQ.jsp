<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet"
	href="../resources/css/customer_center/board_free_list.css">
<link rel="stylesheet" href="../resources/css/board/board_nav.css">
<link rel="stylesheet" href="../resources/css/customer_center/customer_center_FAQ.css">

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
	        <!-- 공지사항 목록 -->
	        <div class="board_list">
	        	<div class="board_list_title">
					<strong>자주묻는질문(FAQ)</strong>
				</div>
	            <!-- 공지사항 목록 -->
				<div class="board_list_box">

					<table class="board_list_table" id="layout1">
		                <thead>
		                    <tr>
		                        <th class="nth1">글 번호</th>
		                        <th class="nth2">작성자</th>
		                        <th class="nth3">제목</th>
		                        <th class="nth4">날짜</th>
		                    </tr>
		                </thead>
                        <tbody>
							<!--데이터 받아오기-->
						<c:forEach var="dto" items="${faqList }">
							<tr>
								<td>${dto.faqNum }</td>
								<td>${dto.userId }</td>
								<td><a href="getFAQContent.customer?faqNum=${dto.faqNum }">${dto.faqTitle }</a></td>
								<td><fmt:formatDate value="${dto.faqRegdate }"
										pattern="yy.MM.dd" /></td>
							</tr>
						</c:forEach>
					</tbody>
					</table>
				</div>
				
				<!-- 페이지 번호 -->
				<div class="page_nav">
		                <ul class="center">
		                	<c:choose>
			                	<c:when test="${!pageVO.first }">
									<li id="page_first">
										<a href="customer_center_FAQ.customer">
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
										<a href="customer_center_FAQ.customer?page=${pageVO.pageNum - 1 }">
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
									<a href="customer_center_FAQ.customer?page=${i }" title="1페이지">${i }</a>
								</li>
							</c:forEach>
							
							<c:choose>
			                	<c:when test="${!pageVO.last }">
									<li id="page_next">
										<a href="customer_center_FAQ.customer?page=${pageVO.pageNum + 1}">
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
										<a href="customer_center_FAQ.customer?page=${pageVO.realEndPage }">
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