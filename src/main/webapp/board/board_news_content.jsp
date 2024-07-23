<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../include/header.jsp" %>

	<section id="board_content">
	
	    <nav class="board_nav">
		    <div id="board_nav_wrap">
		        <h1>BOARD</h1>
		        <ul class="menu">
		            <li class="nth1 active"><strong><a href="board_news_list.boardNews">NEWS</a></strong></li>
		            <li class="nth2"><strong><a href="board_free_list.boardFree">자유게시판</a></strong></li>
		            <li class="nth3"><strong><a href="board_team_list.boardTeam">팀원 모집</a></strong></li>
		            <li class="nth4"><strong><a href="board_ask_list.boardAsk">Q & A</a></strong></li>
		        </ul>
		    </div>
		</nav>
	
	    <div class="board_content_box">      
	        <div class="inner_box">
	            <div class="inner">
	                <div class="inner_top">
	                    <div class="category">NEWS</div>
	                    <h1 class="title">
	                        <strong>${dto.newsTitle }</strong>
	                        <span class="new">N</span>
	                    </h1>
	                    <div class="info">
	                        <div class="writer">${dto.newsWriter }</div>
	                        <div class="date">
	                        	<fmt:formatDate value="${dto.newsRegdate }" pattern="yy.MM.dd"/>
	                        </div>
	                    </div>
	                </div>
	                <div class="inner_mid">
	                    <div class="like_container">
	                        <button class="like_button" onclick="increaseLikes()">
	                            <img src="../resources/img/board_img/like.png" alt="좋아요">
	                        </button>
	                        <span class="like_count" id="likeCount">${dto.newsLikeCount }</span>
	                    </div>
	                    <div class="content">
	                        ${dto.newsContent }
	                    </div>
	                </div>
	                <div class="inner_bottom">
	                    <div class="inner_bottom_left">
	                        <div class="count" title="조회수">
	                            <img src="../resources/img/board_img/count.png" alt="조회수">
	                            <span>${dto.newsHit }</span>
	                        </div>
	                        <div class="comment_count" title="댓글수">
	                            <img src="../resources/img/board_img/comment.png" alt="댓글수">
	                            <span>${dto.newsCmtCount }</span>
	                        </div>
	                    </div>
	                    <div class="inner_bottom_right">
	                        <button class="delete_button" type="button" data-bno="${dto.newsNum }">삭제</button>
	                        <button class="edit_button" type="button" onclick="location.href='board_news_edit.boardNews?newsNum=${dto.newsNum}'">수정</button>
	                        <button class="list_button" type="button" onclick="location.href='board_news_list.boardNews'">목록</button>
	                    </div>
	                </div>
					<div class="comment_box">
		                <iframe src="board_comment.jsp" frameborder="0" scrolling="no"></iframe>
					</div>
	            </div>
	        </div>
	    </div>
	</section>
		<script>
		var deleteButton = document.querySelector(".inner_bottom_right .delete_button");
		deleteButton.addEventListener('click', (e) => {
		    //e.preventDefault(); // 기본 동작(예: 폼 제출) 방지
		    if (confirm('삭제 하시겠습니까?')) {
		        // e.target.dataset.bno을 사용하여 data-bno 값을 가져옴
		        location.href = "board_news_delete.boardNews?newsNum=" + e.target.dataset.bno;
		    } else {
		        // 아무 동작도 하지 않음
		        return;
		    }
		});
	</script>
	
	<script src="${pageContext.request.contextPath }/resources/js/board/board_content.js"></script>
<%@ include file="../include/footer.jsp" %>
