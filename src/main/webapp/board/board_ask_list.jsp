<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>

<section id="board_ask_list_wrap">  

    
<nav class="board_nav">
    <div id="board_nav_wrap">
        <h1>BOARD</h1>
        <ul class="menu">
            <li class="nth1"><strong><a href="board_news_list.board">NEWS</a></strong></li>
            <li class="nth2"><strong><a href="board_free_list.board">자유게시판</a></strong></li>
            <li class="nth3"><strong><a href="board_team_list.board">팀원 모집</a></strong></li>
            <li class="nth4 active"><strong><a href="board_ask_list.board">Q & A</a></strong></li>
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
                <!-- 동적으로 게시물 추가 -->
                <div class="post">
                    <div class="post_box">

                        <div class="question-content">질문 내용</div>
                        <div class="info">
                            <div class="writer">작성자</div>
                            <div class="date">2023-07-17</div>
                        </div>

                    </div>
                    <div class="comment-section">
                        <div class="comment">
                            <textarea rows="2" cols="50" placeholder="댓글을 입력하세요"></textarea>
                            <button class="submit-comment">댓글 작성</button>
                        </div>
                    </div>
                </div>
                <!-- 추가적인 게시물은 여기에 추가 -->
            </div>
            <div class="page_nav">
                <ul class="center">
                    <li><a href="첫페이지"><img src="../resources/img/board_img/ico_first.gif" alt="처음페이지"></a></li>
                    <li><a href="이전페이지"><img src="../resources/img/board_img/ico_prev.gif" alt="이전페이지"></a></li>
                    <li class="active"><a href="board_ask_list.jsp" title="1페이지(선택됨)">1</a></li>
                    <li><a href="2페이지링크" title="2페이지">2</a></li>
                    <li><a href="3페이지링크" title="3페이지">3</a></li>
                    <li><a href="4페이지링크" title="4페이지">4</a></li>
                    <li><a href="5페이지링크" title="5페이지">5</a></li>
                    <li><a href="다음페이지"><img src="../resources/img/board_img/ico_next.gif" alt="다음페이지"></a></li>
                    <li><a href="마지막페이지"><img src="../resources/img/board_img/ico_last.gif" alt="마지막페이지"></a></li>
                </ul>
                <form action="board_ask_write.board" class="right">
                    <button value="글쓰기">작성</button>  
                </form>   
            </div>
            <div class="board_ask_search">
                <select class="board_ask_search_box">
                    <option value="notice">전체</option>
                    <option value="writer">작성자</option>
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                </select>
                <input placeholder="검색어를 입력해 주세요" type="text">
                <span>
                    <button class="btn" onclick="searchFunction()" type="submit">검색</button>
                </span>
            </div>
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

document.querySelectorAll('.submit-comment').forEach(button => {
    button.addEventListener('click', (event) => {
        event.stopPropagation();
        alert('댓글이 작성되었습니다.');
    });
});

function searchFunction() {
    alert('검색 기능이 실행되었습니다.');
}
</script>

</body>
</html>

<%@ include file="../include/footer.jsp" %>