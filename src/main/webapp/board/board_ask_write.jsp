<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>


<section id="board_write_wrap_ask">

    <nav class="board_nav">
        <div id="board_nav_wrap">
            <h1>BOARD</h1>
            <ul class="menu">
                <li class="nth1"><strong><a href="board_news_list.jsp">NEWS</a></strong></li>
                <li class="nth2"><strong><a href="board_free_list.jsp">자유게시판</a></strong></li>
                <li class="nth3"><strong><a href="board_team_list.jsp">팀원 모집</a></strong></li>
                <li class="nth4 active"><strong><a href="board_ask_list.jsp">Q & A</a></strong></li>
            </ul>
        </div>
    </nav>

    <div class="board_write_box">
        <h1>
            <strong>Q & A</strong>
        </h1>
        <form class="board_write_content" action="submit.php" method="post">
            <div class="form_group">
                <label class="content_text" for="content">질문</label>
                <textarea id="content" name="content" class="form-control" rows="5" required>*질문 내용을 구체적으로 입력해주세요</textarea>
            </div>
            <div class="button_box">
                <button type="button" class="button_cancle" onclick="history.back()">취소</button>
                <button type="submit" class="button_registration" onclick="location.href='board_ask_list.jsp'">등록</button>
            </div>
        </form>
    </div>
</section>


<%@ include file="../include/footer.jsp" %>