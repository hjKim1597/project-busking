<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<!-- 부트스트랩 css링크 -->
	<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
	<!-- 제이쿼리(부스트랩보다 먼저 링크) -->
	<script src="../resources/js/jquery-3.7.1.min.js"></script>
	<!-- 부트스트랩 js링크 -->
	<script src="../resources/js/bootstrap.min.js"></script>
	<!-- 커스터마이징 한 css 디자인 추가 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board/board_comment.css">
</head>

<body>
	<section id="board_comment_wrap">
	    <div class="board_comment_inner">
	        <h2>댓글</h2>
	        <div class="board_comment_list"> <!--댓글 리스트 영역-->
	            <div class="board_comment_list_box">
	                <div class="board_comment_header">
	                    <div class="board_comment_info">
	                        <div class="writer">ABC12341</div>
	                        <div class="date">24.7.7.12:00</div>
	                    </div>
	                    <button class="board_comment_like" onclick="increaseLikes('likeCount1')">
	                        <img src="../resources/img/board_img/like.png" alt="">
	                        <span class="like_count" id="likeCount1">0</span>
	                    </button>
	                </div>
	                <div class="board_comment_content">
	                    댓글내용댓글내용댓글내용댓글내용댓글내용
	                </div>
	            </div>
	            
	        </div>
	        <!--댓글 작성 영역-->
	        <div class="form-group board_comment_write">
	            <textarea class="form-control" rows="5" id="comment"></textarea>
	        </div>
	        <div class="board_comment_button"><button value="등록버튼">등록</button></div>
	    </div>
	</section>
	
	<script>
	    // 페이지 로드 시 하트 수 초기화
	    document.addEventListener("DOMContentLoaded", function() {
	        const countElement = document.getElementById('likeCount1'); // ID 수정
	        const storedCount = localStorage.getItem('likeCount1'); // ID 수정
	
	        if (storedCount) {
	            countElement.textContent = storedCount;
	        }
	    });
	
	    function increaseLikes(likeCountId) {
	        const countElement = document.getElementById(likeCountId);
	        let count = parseInt(countElement.textContent, 10);
	        count++;
	        countElement.textContent = count;
	
	        // 로컬 스토리지에 하트 수 저장
	        localStorage.setItem(likeCountId, count);
	    }
	</script>
</body>
</html>

