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
	                <div class="post">
	                    <div class="post_box">
	
	                        <div class="question-content">${dto.askContent }</div>
	                        <div class="info">
	                            <div class="writer">${dto.askWriter }</div>
	                            <div class="date"><fmt:formatDate value="${dto.askRegdate }" pattern="yy.MM.dd" /></div>
	                        </div>
	   
	                    </div>
	                    <div class="comment-section">
	                    <c:choose>
	                    	<c:when test="${sessionScope.userId == dto.askWriter }">
	                        	<form action="board_edit.boardAsk" method="post">
			                        <div class="comment">
			                            <textarea rows="2" cols="50" placeholder="수정할 내용을 입력하세요" name="content"></textarea>
			                            <input type="submit" class="submit-comment edit" value="수정">
			                            <input type="button" class="submit-comment delete" value="삭제">
			                            <input type="hidden" value="${dto.askNum }" name="bno">
			                        </div>
	                    		</form>
	                        </c:when>
	                        <c:otherwise>
		                    	<form action="#" method="post">
			                        <div class="comment">
			                            <textarea rows="2" cols="50" placeholder="댓글을 입력하세요" name="comContent"></textarea>
			                            <input class="submit-comment" value="등록" type="submit">
			                        </div>
		                    	</form>
	                    	</c:otherwise>
						</c:choose>
	                        <c:forEach var="comDto" items="${comList }">
		                        <div class="comment">
			                        <div class="info">
			                            <div class="writer">test</div>
			                            <div class="date">test</div>
			                        </div>
		                        	<textarea rows="2" cols="50" readonly class="comList">${comDto.comAskContent }</textarea>
		                        </div>
		                    </c:forEach>
	                    </div>
	                </div>
	                <!-- 추가적인 게시물은 여기에 추가 -->
                </c:forEach>
            </div>
            <div class="page_nav">
                <ul class="center">
					<li id="page_first">
						<a href="board_list.boardAsk">
							<img src="../resources/img/board_img/ico_first.gif" alt="처음페이지">
						</a>
					</li>
					<c:if test="${pageVO.prev }">
						<li id="page_prev">
							<a href="board_list.boardAsk?page=${pageVO.pageNum - 1 }">
								<img src="../resources/img/board_img/ico_prev.gif" alt="이전페이지">
							</a>
						</li>
					</c:if>
					<c:forEach var="i" begin="${pageVO.startPage }" end="${pageVO.endPage }" step="1">
						<li class="page_li" data-page="${i }">
							<a href="board_list.boardAsk?page=${i }" title="1페이지">${i }</a>
						</li>
					</c:forEach>
					<c:if test="${pageVO.next }">
						<li id="page_next">
							<a href="board_list.boardAsk?page=${pageVO.pageNum + 1 }">
								<img src="../resources/img/board_img/ico_next.gif" alt="다음페이지">
							</a>
						</li>
					</c:if>
					<li id="page_last">
						<a href="board_list.boardAsk?page=${pageVO.endPage }">
							<img src="../resources/img/board_img/ico_last.gif" alt="마지막페이지">
						</a>
					</li>
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

<script src="js/jquery-3.7.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
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

/* document.querySelectorAll('.submit-comment').forEach(button => {
    button.addEventListener('click', (event) => {
        event.stopPropagation();
        var msg = "";
        if(event.target.classList.contains("edit")) {
        	msg = "글이 수정되었습니다.";
        } else if(event.target.classList.contains("delete")) {
        	msg = "글이 삭제되었습니다.";
        } else {
        	msg = '댓글이 작성되었습니다.';
        }
        alert(msg);
    });
}); */

</script>

</body>
</html>

<%@ include file="../include/footer.jsp" %>