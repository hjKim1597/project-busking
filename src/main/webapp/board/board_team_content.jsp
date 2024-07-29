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
	            <li class="nth1"><strong><a href="board_list.boardTeam">NEWS</a></strong></li>
	            <li class="nth2"><strong><a href="board_list.boardFree">자유게시판</a></strong></li>
	            <li class="nth3 active"><strong><a href="board_list.boardTeam">팀원 모집</a></strong></li>
	            <li class="nth4"><strong><a href="board_list.boardAsk">Q & A</a></strong></li>
	        </ul>
	    </div>
	</nav>

    <div class="board_content_box">      
        <div class="inner_box">
            <div class="inner">
                <div class="inner_top">
                    <div class="category">팀원 모집</div>
                    <h1 class="title">
                        <strong>${dto.teamTitle }</strong>
                        <span class="new">N</span>
                    </h1>
                    <div class="info">
                        <div class="writer">${dto.teamWriter }</div>
                        <div class="date"><fmt:formatDate value="${dto.teamRegdate }" pattern="yy.MM.dd"/></div>
                    </div>
                </div>
                <div class="inner_mid">
                    <div class="team_container">
                        <div class="team_count_box">
                            <div class="team_count">모집 인원</div>
                            <div class="team_countData">
                            	<c:choose>
									<c:when test="${dto.teamCount == 6 }">기타</c:when>
									<c:otherwise>${dto.teamCount }명</c:otherwise>
								</c:choose>
							</div> <!--모집인원받아오기-->
                        </div>
                        <div class="team_status_box">
                            <div class="team_status">모집 상태</div>
                            <div class="team_statusData">${dto.teamResult == 'T' ? '모집중' : '모집완료' }</div>  <!--모집상태받아오기-->                           
                        </div>
                    </div>
                    <div class="content">
                        ${dto.teamContent }
                    </div>
                </div>
                <div class="inner_bottom">
                    <div class="inner_bottom_left">
                        <div class="count" title="조회수">
                            <img src="../resources/img/board_img/count.png" alt="조회수">
                            <span>${dto.teamHit }</span>
                        </div>
                        <div class="comment_count" title="댓글수">
                            <img src="../resources/img/board_img/comment.png" alt="댓글수">
                            <span>${dto.teamCmtCount }</span>
                        </div>
                    </div>
                    <div class="inner_bottom_right">
                        <button class="delete_button" type="button" data-bno="${dto.teamNum }" data-writer=${dto.teamWriter } data-subject="Team">삭제</button>
                       	<button class="edit_button" type="button" onclick="location.href='board_edit.boardTeam?subject=Team&bno=${dto.teamNum}&writer=${dto.teamWriter }'">수정</button>
                        <button class="list_button" type="button" onclick="location.href='board_list.boardTeam';">목록</button>
                    </div>
                </div>
                <div class="comment_box">
                    <iframe src="board_comment_team_list.comment?bno=${dto.teamNum }" frameborder="0" scrolling="no"></iframe>
                </div>
            </div>
        </div>
    </div>
</section>
	<script>

		var date = new Date();
		var regdate = '${regdate}';
		
		if((date - regdate) > 86400000) {
			var newSpan = document.querySelector('.inner_top .title .new');
			newSpan.style.display = "none";
		}
		
	</script>
	
	<script src="${pageContext.request.contextPath }/resources/js/board/board_content.js"></script>

<%@ include file="../include/footer.jsp" %>
