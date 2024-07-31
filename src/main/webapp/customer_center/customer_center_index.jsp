<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../include/header.jsp"%>

<!-- 중앙 레이아웃 -->
<section class="container customer-center-width" id="change">
	<!-- 좌측메뉴 -->
	<div class="board_nav">
		<div id="board_nav_wrap">
			<h1>고객센터</h1>
			<ul class="menu">
				<li class="nth1"><strong><a
						href="customer_center_index.customer"><span>공지사항</span></a></strong></li>
				<li class="nth2"><strong><a
						href="customer_center_res.customer"><span>이달의 예약</span></a></strong></li>
				<li class="nth3"><strong><a
						href="customer_center_guide.customer"><span>이용안내</span></a></strong></li>
				<li class="nth4"><strong><a
						href="customer_center_FAQ.customer"><span>FAQ</span></a></strong></li>
			</ul>
		</div>
	</div>
	<!-- 공지사항 게시판 -->
	<div class="board">
		<!-- 공지사항 목록 -->
		<div class="board_list">
			<div class="board_list_title">
				<strong>공지사항</strong>
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
							<th class="nth5">조회수</th>
						</tr>
					</thead>
					<tbody>
						<!--데이터 받아오기-->
						<c:forEach var="dto" items="${noticeList }">
							<tr>
								<td>${dto.noticeNum }</td>
								<td>${dto.managerId }</td>
								<td><a
									href="getContent.customer?noticeNum=${dto.noticeNum }">${dto.noticeTitle }</a></td>
								<td><fmt:formatDate value="${dto.noticeRegdate }"
										pattern="yy.MM.dd" /></td>
								<td>${dto.noticeHit }</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>


				<c:if test="${sessionScope.isAdmin}">
					<h1>글쓰기</h1>
					<form action="regist.customer" method="post">
						<label for="title">제목:</label> <input type="text"
							name="noticeTitle" id="title" required> <br> <label
							for="content">내용:</label>
						<textarea name="noticeContent" id="content" required></textarea>
						<br>
						<button type="submit">작성</button>
					</form>
				</c:if>

				<c:if test="${param.error != null}">
					<script>
				        alert('${param.error}');
				    </script>
				</c:if>


<!--  -->
				<div class="page_nav" id="page_num123">
					<form action="regist.customer" class="right">
						<button value="글쓰기" onclick="">작성</button>
					</form>
				</div>



			</div>

			<!-- 페이지 번호 -->
			<div class="page_nav">
				<ul class="center">
					<c:choose>
						<c:when test="${!pageVO.first }">
							<li id="page_first"><a href="customer_center_index.customer">
									<i class="fa-solid fa-angles-left"></i>
							</a></li>
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
							<li id="page_prev"><a
								href="customer_center_index.customer?page=${pageVO.pageNum - 1 }">
									<i class="fa-solid fa-angle-left"></i>
							</a></li>
						</c:when>
						<c:otherwise>
							<li id="page_prev">
								<div class="page_link">
									<i class="fa-solid fa-angle-left" style="color: #daeede;"></i>
								</div>
							</li>
						</c:otherwise>
					</c:choose>

					<c:forEach var="i" begin="${pageVO.startPage }"
						end="${pageVO.endPage }" step="1">
						<li class="page_li" data-page="${i }"><a
							href="customer_center_index.customer?page=${i }" title="1페이지">${i }</a>
						</li>
					</c:forEach>

					<c:choose>
						<c:when test="${!pageVO.last }">
							<li id="page_next"><a
								href="customer_center_index.customer?page=${pageVO.pageNum + 1}">
									<i class="fa-solid fa-angle-right"></i>
							</a></li>
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
							<li id="page_last"><a
								href="customer_center_index.customer?page=${pageVO.realEndPage }">
									<i class="fa-solid fa-angles-right"></i>
							</a></li>
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

			<!-- 검색 -->
			<form action="customer_center_index.customer" method="post">
				<div class="board_search">
					<select class="board_search_box" name="type">
						<option value="all" selected>전체</option>
						<option value="writer">작성자</option>
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select> 
					<input placeholder="검색어를 입력해 주세요" type="text" name="target" required> 
						<span> 
						<input class="btn" type="submit" id="search_btn" value="검색">
					</span>
				</div>
			</form>


		</div>
	</div>
</section>

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
