<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../include/header.jsp" %>

<section id="board_free_list_wrap">

	<nav class="board_nav">
		<div id="board_nav_wrap">
			<h1>BOARD</h1>
			<ul class="menu">
				<li class="nth1"><strong><a href="board_list.boardNews">NEWS</a></strong></li>
				<li class="nth2 active"><strong><a href="board_list.boardFree">자유게시판</a></strong></li>
				<li class="nth3"><strong><a href="board_list.boardTeam">팀원 모집</a></strong></li>
				<li class="nth4"><strong><a href="board_list.boardAsk">Q & A</a></strong></li>
			</ul>
		</div>
	</nav>

	<div class="wrap_board_free">
		<div class="wrap_board_free_list">
			<div class="add">
				<div class="wrap_board_free_list_title">
					<div>
						<strong>자유게시판</strong>
					</div>
				</div>


				<div class="board_free_list_box">
					<table class="board_free_list_content">
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
							<c:forEach var="dto" items="${freeList }">
								<tr>
									<td>
										<c:set var="numberStr" value="${fn:substring(dto.freeNum, 5, 13)}" />
                        				<c:out value="${numberStr + 0}" />
                        			</td>
									<td>${dto.freeWriter }</td>
									<td><a href="board_content.boardFree?bno=${dto.freeNum }">${dto.freeTitle }</a></td>
									<td><fmt:formatDate value="${dto.freeRegdate }" pattern="yy.MM.dd" /></td>
									<td>${dto.freeHit }</td>
								</tr>
							</c:forEach>


						</tbody>
					</table>
				</div>

				<div class="page_nav">
	                <ul class="center">
	                	<c:choose>
		                	<c:when test="${!pageVO.first }">
								<li id="page_first">
									<a href="board_list.boardFree">
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
									<a href="board_list.boardFree?page=${pageVO.pageNum - 1 }">
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
								<a href="board_list.boardFree?page=${i }" title="1페이지">${i }</a>
							</li>
						</c:forEach>
						
						<c:choose>
		                	<c:when test="${!pageVO.last }">
								<li id="page_next">
									<a href="board_list.boardFree?page=${pageVO.pageNum + 1}">
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
									<a href="board_list.boardFree?page=${pageVO.realEndPage }">
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
					<form action="board_write.boardFree" class="right">
						<button value="글쓰기">작성</button>
					</form>
				</div>
				<form action="board_list.boardFree" method="post">
					<div class="board_free_search">
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
	</div>
</section>

<script>
window.onload = function() {
	var pageNum = '${pageVO.pageNum}';
	console.log(pageNum);
	var pageUl = document.querySelector(".page_nav .center");
	
	var pageItems = pageUl.querySelectorAll(".page_li");
	Array.from(pageItems)
		 .filter(i => i.dataset.page == pageNum)
		 .forEach(item => item.classList.add("active"));
	 	
}

</script>
    
<%@ include file="../include/footer.jsp" %>

