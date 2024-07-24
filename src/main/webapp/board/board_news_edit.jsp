<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<section id="board_write_wrap">

	<nav class="board_nav">
	    <div id="board_nav_wrap">
	        <h1>BOARD</h1>
	        <ul class="menu">
	            <li class="nth1 active"><strong><a href="board_list.boardNews">NEWS</a></strong></li>
	            <li class="nth2"><strong><a href="board_free_list.boardFree">자유게시판</a></strong></li>
	            <li class="nth3"><strong><a href="board_team_list.boardTeam">팀원 모집</a></strong></li>
	            <li class="nth4"><strong><a href="board_ask_list.boardAsk">Q & A</a></strong></li>
	        </ul>
	    </div>
	</nav>

    <div class="board_write_box">
        <h1>
            <strong>게시글 수정</strong>
        </h1>
        <form class="board_write_content" action="board_editForm.boardNews?bno=${dto.newsNum }" method="post">
            <div class="form_group">
                <label class="title_text" for="title">뉴스 제목</label>
                <input class="title_box" type="text" id="title" name="title" value="${dto.newsTitle }" required>
            </div>
            <div class="form_group">
                <label class="content_text" for="content">본문</label>
                <div id="editor">${dto.newsContent }</div>
                <input type="hidden" name="content" id="content" required>
            </div>
            <div class="button_box">
                <button type="button" class="button_cancle" onclick="history.back()">취소</button>
                <input type="submit" class="button_registration" value="등록">
            </div>
        </form>
    </div>
</section>

<script src="${pageContext.request.contextPath }/resources/js/board/board_write.js"></script>
<%@ include file="../include/footer.jsp" %>