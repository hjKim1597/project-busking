<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="../include/header.jsp" %>
<link rel="stylesheet" href="board_team_write.css">

<section id="board_write_wrap">

	<nav class="board_nav">
	    <div id="board_nav_wrap">
	        <h1>BOARD</h1>
	        <ul class="menu">
	            <li class="nth1"><strong><a href="board_news_list.board">NEWS</a></strong></li>
	            <li class="nth2"><strong><a href="board_free_list.board">자유게시판</a></strong></li>
	            <li class="nth3 active"><strong><a href="board_team_list.board">팀원 모집</a></strong></li>
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
                <input class="title_box" type="text" name="title" required style="height: 40px;">
                <br>
                <div class="title_team_box">
                    <select class="title_box" type="text" name="title" required style="height: 40px; width: 110px; float: left;">
                        <option id="board_team_option" value="">모집 인원</option>
                        <option value="1인">1</option>
                        <option value="2인">2</option>
                        <option value="3인">3</option>
                        <option value="4인">4</option>
                        <option value="5인">5</option>
                        <option value="기타">기타</option>
                    </select>
                        <select class="title_box" type="text" name="title" required style="height: 40px; width: 110px;">
                            <option id="board_team_option" value="">모집 상태</option>
                            <option value="1인">모집 중</option>
                            <option value="2인">모집 완료</option>
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
                <button type="submit" class="button_registration" onclick="location.href='board_team_list.jsp'">등록</button>
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