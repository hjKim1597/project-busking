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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
	<!-- 제이쿼리(부트스트랩보다 먼저 링크해야함) -->
	<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.min.js"></script>
	<!-- 부트스트랩 js링크 -->
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>

	<!-- 웹폰트 -->
	<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
	<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
	<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
		
	<!-- 댓글 css 링크 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board/board_free_comment.css">

</head>
<body>

	<section id="board_comment_wrap">
	    <div class="board_comment_inner">
	        <h2>댓글</h2>
	        <div class="board_comment_list"> <!--댓글 리스트 영역-->
	        	<c:forEach var="dto" items="${commentList }">
		            <c:choose>
		            	<c:when test="${dto.comFreeReply == 'ROOT' }">
		            		<div class="board_comment_list_box">
				                <div class="board_comment_header">
				                    <div class="board_comment_info">
				                        <div class="writer">${dto.comFreeWriter }</div>
				                        <div class="date"><fmt:formatDate value="${dto.comFreeRegdate }" pattern="yy.MM.dd"/></div>
				                    </div>
				                    <!-- 
				                    <button class="board_comment_like" onclick="location.href='board_comment_like.comment?comNum=${dto.comFreeNum}'">
				                        <img src="../resources/img/board_img/like.png" alt="">
				                        <span class="like_count" id="likeCount1">${dto.comFreeLikeCount }</span>
				                    </button>
				                     -->
				                </div>
				                <div class="board_comment_content">
				                    ${dto.comFreeContent }
				                </div>
				                <div class="comment-section" style="display: none">
						            <form action="board_comment_free_reply.comment" method="post">
				                        <div class="comment">
				                            <textarea rows="2" cols="50" placeholder="댓글을 입력하세요" name="content" required></textarea>
				                            <input class="submit-comment" value="등록" type="submit">
				                            <input type="hidden" value="${bno }" name="bno">
				                            <input type="hidden" value="${dto.comFreeNum }" name="group">
				                            <input type="hidden" value="${dto.comFreeNum }" name="reply">
				                            <input type="hidden" value="${dto.comFreeDepth }" name="depth">
				                            <input type="hidden" value="free" name="subject">
				                        </div>
			                   		</form>
			                   	</div>
			                </div>
			            </c:when>
		                <c:otherwise>
		                   	<div class="reply">
		                   		<div class="board_comment_header">
		                   			<div class="reply_trim" data-depth="${dto.comFreeDepth }"></div>
		                   			<div class="reply_img">
		                   				<img src="../resources/img/board_img/ico_reply.png" alt="reply">
		                   			</div>
				                    <div class="board_comment_info">
				                        <div class="writer">${dto.comFreeWriter }</div>
				                        <div class="date"><fmt:formatDate value="${dto.comFreeRegdate }" pattern="yy.MM.dd"/></div>
				                    </div>
				                    <div class="board_comment_content">
				                    	<p>${dto.comFreeContent }</p>
				                	</div>
				                	<div class="reply_like">
				                		<!-- 
					                    <button class="board_comment_like" onclick="location.href='board_comment_like.comment?comNum=${dto.comFreeNum}'">
					                        <img src="../resources/img/board_img/like.png" alt="like">
					                        <span class="like_count" id="likeCount1">${dto.comFreeLikeCount }</span>
					                    </button>
					                    -->
				                    </div>
				                </div>
				                <div class="comment-section" style="display: none">
						            <form action="board_comment_free_reply.comment" method="post">
				                        <div class="comment">
				                            <textarea rows="2" cols="50" placeholder="댓글을 입력하세요" name="content" required></textarea>
				                            <input class="submit-comment" value="등록" type="submit">
				                            <input type="hidden" value="${bno }" name="bno">
				                            <input type="hidden" value="${dto.comFreeGroup }" name="group">
				                            <input type="hidden" value="${dto.comFreeNum }" name="reply">
				                            <input type="hidden" value="${dto.comFreeDepth }" name="depth">
				                            <input type="hidden" value="free" name="subject">
				                        </div>
			                   		</form>
			                   	</div>
				                
				        	</div>
	                   	</c:otherwise>
	                 </c:choose>
		         </c:forEach>
	        </div>
	        <!--댓글 작성 영역-->
	        <form action="board_comment_free_write.comment" method="post">
		        <div class="form-group board_comment_write">
		            <textarea class="form-control" rows="5" id="comment" name="content" required></textarea>
		        </div>
		        <div class="board_comment_button">
		        	<input type="submit" value="등록">
		        	<input type="hidden" value=${bno } name="bno">
		        	<input type="hidden" value="free" name="subject">
		        </div>
	        </form>
	    </div>
	</section>
	<script>
		document.querySelectorAll('.board_comment_list_box,.reply').forEach(box => {
		    box.addEventListener('click', () => {
		        const commentSection = box.querySelector('.comment-section');
		        if(commentSection == null) return;
		        commentSection.style.display = commentSection.style.display === 'none' ? 'block' : 'none';
		    });
		});
	
		document.querySelectorAll('.comment textarea').forEach(textarea => {
		    textarea.addEventListener('click', (event) => {
		        event.stopPropagation();
		    });
		});
		
		window.onload = function() {
			var replyDepths = document.querySelectorAll(".reply_trim");
			replyDepths.forEach(reply => {
				var depth = parseInt(reply.dataset.depth, 10);
				var indentation = 20 * depth; 
				
				reply.style.marginLeft = indentation + 'px';
			})
		}
		
	</script>

</body>
