<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>

<section id="board_write_wrap">

    <nav class="board_nav">
	    <div id="board_nav_wrap">
	        <h1>BOARD</h1>
	        <ul class="menu">
	            <li class="nth1"><strong><a href="board_news_list.board">NEWS</a></strong></li>
	            <li class="nth2 active"><strong><a href="board_free_list.board">자유게시판</a></strong></li>
	            <li class="nth3"><strong><a href="board_team_list.board">팀원 모집</a></strong></li>
	            <li class="nth4"><strong><a href="board_ask_list.board">Q & A</a></strong></li>
	        </ul>
	    </div>
	</nav>

    <div class="board_write_box">
        <h1>
            <strong>게시글 작성</strong>
        </h1>
        <form class="board_write_content" action="submit.php" method="post">
            <div class="form_group">
                <label class="title_text" for="title">제목</label>
                <input class="title_box" type="text" id="title" name="title" required>
            </div>
            <div class="form_group">
                <label class="content_text" for="content">본문</label>
                <div id="editor"></div>
                <input type="hidden" name="content" id="content" required>
            </div>
            <div class="button_box">
                <button type="button" class="button_cancle" onclick="history.back()">취소</button>
                <button type="submit" class="button_registration" onclick="location.href='board_free_list.jsp'">등록</button>
            </div>
        </form>
    </div>
</section>

<script>
    const quill = new Quill('#editor', {
        theme: 'snow',
        modules: {
            toolbar: [
                [{ 'header': [1, 2, false] }],
                ['bold', 'italic', 'underline'],
                ['link', 'image'],
                ['clean']
            ]
        }
    });

    document.querySelector('form').onsubmit = function() {
        // 에디터의 내용을 hidden input에 저장
        document.getElementById('content').value = quill.root.innerHTML;
    };
</script>

<%@ include file="../include/footer.jsp" %>