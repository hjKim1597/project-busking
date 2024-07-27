<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<%@ include file="../include/header.jsp" %>

<section id="board_ask_list_wrap">  

    
	<nav class="board_nav">
		<div id="board_nav_wrap">
			<h1>BOARD</h1>
			<ul class="menu">
				<li class="nth1"><strong><a href="board_list.boardNews">NEWS</a></strong></li>
				<li class="nth2"><strong><a href="board_list.boardFree">자유게시판</a></strong></li>
				<li class="nth3"><strong><a href="board_list.boardTeam">팀원 모집</a></strong></li>
				<li class="nth4 active"><strong><a href="board_list.boardAsk">Q & A</a></strong></li>
			</ul>
		</div>
	</nav>
<div class="wrap_board_ask">
    <div class="wrap_board_ask_list">
        <div class="add">
            <div class="wrap_board_ask_list_title">
                <div><strong>질문 게시판</strong></div>
            </div>
            <div class="board_ask_content_wrap">
            	<c:forEach var="dto" items="${askList }">
	                <!-- 동적으로 게시물 추가 -->
	                <div class="post" data-bno="${dto.askNum }">
	                    <div class="post_box">

	                        <div class="question-content">${dto.askContent }</div>
	                        <div class="info">
	                            <div class="writer">${dto.askWriter }</div>
	                            <div class="date">
	                            	<fmt:formatDate value="${dto.askRegdate }" pattern="yy.MM.dd" />
	                            </div>
	                        </div>
	   
	                    </div>
	                    <div class="comment-section">
		                    <c:choose>
		                    	<c:when test="${sessionScope.userId == dto.askWriter }">
		                        	<form action="board_edit.boardAsk" method="post">
				                        <div class="comment">
				                            <textarea rows="2" cols="50" placeholder="수정할 내용을 입력하세요" name="content"></textarea>
				                            <input type="submit" class="submit-comment edit" value="수정">
				                            <input type="button" class="submit-comment delete" value="삭제" onclick="location.href='board_delete.boardAsk?bno=${dto.askNum}';">
				                            <input type="hidden" value="${dto.askNum }" name="bno">
				                        </div>
		                    		</form>
		                        </c:when>
		                        <c:otherwise>
			                    	<form action="board_comment_ask_write.comment" method="post">
				                        <div class="comment">
				                            <textarea rows="2" cols="50" placeholder="댓글을 입력하세요" name="content"></textarea>
				                            <input class="submit-comment" value="등록" type="submit">
				                            <input type="hidden" value="${dto.askNum }" name="bno">
				                        </div>
			                    	</form>
		                    	</c:otherwise>
							</c:choose>
		                	<div class="comment-list-box"></div>
	                    </div>
	                </div>
                </c:forEach>
            </div>
            <div class="page_nav">
                <ul class="center">
	                	<c:choose>
		                	<c:when test="${!pageVO.first }">
								<li id="page_first">
									<a href="board_list.boardAsk">
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
									<a href="board_list.boardAsk?page=${pageVO.pageNum - 1 }">
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
								<a href="board_list.boardAsk?page=${i }" title="1페이지">${i }</a>
							</li>
						</c:forEach>
						
						<c:choose>
		                	<c:when test="${!pageVO.last }">
								<li id="page_next">
									<a href="board_list.boardAsk?page=${pageVO.pageNum + 1}">
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
									<a href="board_list.boardAsk?page=${pageVO.realEndPage }">
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
                <form action="board_write.boardAsk" class="right" method="post">
                    <input type="submit" value="작성">
                </form>   
            </div>
            <form action="board_list.boardAsk" method="post">
	            <div class="board_ask_search">
	                <select class="board_ask_search_box" name="type">
	                    <option value="all" selected>전체</option>
						<option value="writer">작성자</option>
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
document.querySelectorAll('.post').forEach(post => {
    post.addEventListener('click', () => {
        const commentSection = post.querySelector('.comment-section');
        commentSection.style.display = commentSection.style.display === 'none' ? 'block' : 'none';
    });
});

document.querySelectorAll('.comment textarea').forEach(textarea => {
    textarea.addEventListener('click', (event) => {
        event.stopPropagation();
    });
});

document.querySelectorAll('.post').forEach(post => {
    post.addEventListener('click', (e) => {
    	var bno = post.dataset.bno;
		
        fetch('board_comment_ask_list.comment?bno=' + bno)
        .then(response => response.json())
        .then(data => {
        	
        	var commentListBox = post.querySelector('.comment-section .comment-list-box');
        	var html = "";
        	data.forEach(item => {
        		
        		html += '<div class="comment">';
        		html += '<div class="info">';
        		html += '<div class="writer">' + item.writer + '</div>';
        		html += '<div class="date">' + item.regdate + '</div>';
        		html += '</div>';
        		html += '<textarea rows="2" cols="50" readonly class="comList">' + item.content + '</textarea>'
        		html += '</div>';
        	});
        	commentListBox.innerHTML = html;
        })
        .catch(error => console.error('오류:', error));
    });
});


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