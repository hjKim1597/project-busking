<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<section id="board_write_wrap">

	<nav class="board_nav">
	    <div id="board_nav_wrap">
	        <h1>BOARD</h1>
	        <ul class="menu">
	            <li class="nth1"><strong><a href="board_news_list.boardNews">NEWS</a></strong></li>
	            <li class="nth2"><strong><a href="board_free_list.boardFree">자유게시판</a></strong></li>
	            <li class="nth3 active"><strong><a href="board_team_list.boardTeam">팀원 모집</a></strong></li>
	            <li class="nth4"><strong><a href="board_ask_list.boardAsk">Q & A</a></strong></li>
	        </ul>
	    </div>
	</nav>

    <div class="board_write_box">
        <h1>
            <strong>게시글 작성</strong>
        </h1>
        <form class="board_write_content" action="board_team_writeForm.boardTeam" method="post">
            <div class="form_group">
                <label class="title_text" for="title">제목</label>
                <input class="title_box" type="text" name="title" required style="height: 40px;">
                <br>
                <div class="title_team_box">
                    <select class="title_box" name="teamCount" required style="height: 40px; width: 110px; float: left;">
                        <option id="board_team_option" value="0">모집 인원</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">기타</option>
                    </select>
                        <select class="title_box" name="teamResult" required style="height: 40px; width: 110px;">
                            <option id="board_team_option" value="">모집 상태</option>
                            <option value="T">모집 중</option>
                            <option value="F">모집 완료</option>
                        </select>
                </div>
            </div>
            
            <div class="form_group">
                <label class="content_text" for="content">본문</label>
                <div id="editor">*모집을 원하는 포지션 등을 자세하게 입력해주세요</div>
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