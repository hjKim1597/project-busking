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
	
	<!-- 부트스트랩 css 링크 -->
	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
	<!-- 제이쿼리(부트스트랩보다 먼저 링크해야함) -->
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.min.js"></script>
	<!-- 부트스트랩 js링크 -->
	<script
		src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>

	<!-- 웹폰트 -->
	<link
		href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css"
		rel="stylesheet">
	<link
		href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css"
		rel="stylesheet">
	<link
		href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css"
		rel="stylesheet">
		
	<!-- 댓글 css 링크 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board/board_news_comment.css">

</head>
<body>

	<section id="board_comment_wrap">
	    <div class="board_comment_inner">
	        <h2>댓글</h2>
	        <div class="board_comment_list"> <!--댓글 리스트 영역-->
	        	<c:forEach var="dto" items="${commentList }">
		            <div class="board_comment_list_box">
		                <div class="board_comment_header">
		                    <div class="board_comment_info">
		                        <div class="writer">${dto.comNewsWriter }</div>
		                        <div class="date"><fmt:formatDate value="${dto.comNewsRegdate }" pattern="yy.MM.dd"/></div>
		                    </div>
		                    <button class="board_comment_like" onclick="increaseLikes('likeCount1')">
		                        <img src="../resources/img/board_img/like.png" alt="">
		                        <span class="like_count" id="likeCount1">${dto.comNewsLikeCount }</span>
		                    </button>
		                </div>
		                <div class="board_comment_content">
		                    ${dto.comNewsContent }
		                </div>
		            </div>
		         </c:forEach>
	        </div>
	        <!--댓글 작성 영역-->
	        <form action="board_comment_news_write.comment" method="post">
		        <div class="form-group board_comment_write">
		            <textarea class="form-control" rows="5" id="comment" name="content"></textarea>
		        </div>
		        <div class="board_comment_button">
		        	<input type="submit" value="등록">
		        	<input type="hidden" value=${bno } name="bno">
		        	<input type="hidden" value="news" name="subject">
		        </div>
	        </form>
	    </div>
	</section>

</body>
