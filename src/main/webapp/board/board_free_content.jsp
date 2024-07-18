<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>

<section id="board_content">

    <nav class="board_nav">
        <div id="board_nav_wrap">
            <h1>BOARD</h1>
            <ul class="menu">
                <li class="nth1"><strong><a href="board_news_list.jsp">NEWS</a></strong></li>
                <li class="nth2 active"><strong><a href="board_free_list.jsp">자유게시판</a></strong></li>
                <li class="nth3"><strong><a href="board_team_list.jsp">팀원 모집</a></strong></li>
                <li class="nth4"><strong><a href="board_ask_list.jsp">Q & A</a></strong></li>
            </ul>
        </div>
    </nav>

    <div class="board_content_box">      
        <div class="inner_box">
            <div class="inner">
                <div class="inner_top">
                    <div class="category">자유게시판</div>
                    <h1 class="title">
                        <strong>글 제목</strong>
                        <span class="new">N</span>
                    </h1>
                    <div class="info">
                        <div class="writer">ABC12341</div>
                        <div class="date">24.7.7.12:00</div>
                    </div>
                </div>
                <div class="inner_mid">
                    <div class="like_container">
                        <button class="like_button" onclick="increaseLikes()">
                            <img src="../resources/img/board_img/like.png" alt="좋아요">
                        </button>
                        <span class="like_count" id="likeCount">0</span>
                    </div>
                    <div class="content">
                        글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용글 내용
                    </div>
                </div>
                <div class="inner_bottom">
                    <div class="inner_bottom_left">
                        <div class="count" title="조회수">
                            <img src="../resources/img/board_img/count.png" alt="조회수">
                            <span>0</span>
                        </div>
                        <div class="comment_count" title="댓글수">
                            <img src="../resources/img/board_img/comment.png" alt="댓글수">
                            <span>0</span>
                        </div>
                    </div>
                    <div class="inner_bottom_right">
                        <button class="delete_button" onclick="삭제기능">삭제</button>
                        <button class="edit_button" onclick="수정기능">수정</button>
                        <button class="list_button" type="button" onclick="location.href='board_free_list.jsp'">목록</button>
                    </div>
                </div>
				<div class="comment_box">
	                <iframe src="board_comment.jsp" frameborder="0" scrolling="no"></iframe>
				</div>

            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
	// iframe 높이 자동 조절
	var iframe = document.querySelector('.comment_box > iframe');
	
	iframe.addEventListener('load', function() {
		iframe.style.height = iframe.contentDocument.body.scrollHeight + 'px';
	});
    // 페이지 로드 시 하트 수 초기화
    document.addEventListener("DOMContentLoaded", function() {
        const countElement = document.getElementById('likeCount');
        const storedCount = localStorage.getItem('likeCount');

        if (storedCount) {
            countElement.textContent = storedCount;
        }
    });

    function increaseLikes() {
        const countElement = document.getElementById('likeCount');
        let count = parseInt(countElement.textContent, 10);
        count++;
        countElement.textContent = count;

        // 로컬 스토리지에 하트 수 저장
        localStorage.setItem('likeCount', count);
    }
    


</script>
<%@ include file="../include/footer.jsp" %>