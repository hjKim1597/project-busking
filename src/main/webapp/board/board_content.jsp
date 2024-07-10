<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../resources/css/board_content.css">
    
<section id="board_content">

    <div class="board_nav">
        <iframe src="board_nav.jsp" frameborder="0" width="200px" height="100%" scrolling="no"></iframe>
    </div>

    <div class="board_content_box">      
        <div class="inner_box">
            <div class="inner">
                <div class="inner_top">
                    <div class="category">게시판정보</div>
                    <h1 class="title">
                        <span class="new">N</span> <!--24시간 이내 게시물의 경우만 뜨도록-->
                        글 제목
                    </h1>
                    <div class="info">
                        <div class="writer">ABC12341</div>
                        <div class="date">24.7.7.12:00</div>
                    </div>
                </div>
                <div class="inner_mid">
                    <div class="like_container">
                        <button class="like_button" onclick="increaseLikies()">
                            <img src="../resources/images/like.png" alt="좋아요">
                        </button>
                        <!-- let count = 0; function increaseLikes() { count++; 
                        document.getElementById('likeCount').textContent = count;}-->
                        <span class="like_count">0</span>
                    </div>
                    <div class="content">
                        글 내용
                    </div>
                </div>
                <div class="inner_bottom">
                    <div class="count" title="조회수">
                        <img src="../resources/images/count.png" alt="조회수">
                        <span>0</span>
                    </div>
                    <div class="comment_count" title="댓글수">
                        <img src="../resources/images/comment.png" alt="댓글수">
                        <span>0</span>
                    </div>

                </div>
            </div>

        </div>

        <div class="comment_box">
            <!--댓글-->
        </div>
    </div>



</section>
