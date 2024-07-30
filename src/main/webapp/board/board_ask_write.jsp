<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>


<section id="board_write_wrap_ask">
	
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
	<div class="board_write">
	    <div class="board_write_box">
	        <h1>
	            <strong>Q & A</strong>
	        </h1>
	        <form class="board_write_content" action="board_writeForm.boardAsk" method="post">
	            <div class="form_group">
	                <label class="content_text" for="content">질문</label>
	                <textarea id="content" name="content" class="form-control" rows="5" placeholder="*질문 내용을 구체적으로 입력해주세요" required></textarea>
	            </div>
	            <div class="button_box">
	                <button type="button" class="button_cancle" onclick="history.back()">취소</button>
	                <input type="submit" class="button_registration" value="등록">
	            </div>
	        </form>
	    </div>
	</div>
</section>


<%@ include file="../include/footer.jsp" %>