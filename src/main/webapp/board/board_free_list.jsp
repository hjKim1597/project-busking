<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet" href="../resources/css/board_css/board_free_list.css">
<!-- 부트스트랩 css링크 -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<!-- 제이쿼리(부스트랩보다 먼저 링크) -->
<script src="../resources/js/jquery-3.7.1.min.js"></script>
<!-- 부트스트랩 js링크 -->
<script src="../resources/js/bootstrap.min.js"></script>
<!-- 커스터마이징 한 css 디자인 추가 -->
<link rel="stylesheet" href="../resources/css/custom-reset.css">
<link rel="stylesheet" href="../resources/css/board_css/board_nav.css">
</head>    

    
<section id="board_free_list_wrap">  

    
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

        <div class="wrap_board_free">              
            <div class="wrap_board_free_list">
                <div class="add">
                    <div class="wrap_board_free_list_title">
                        <div><strong>자유게시판</strong></div>
                    </div>
                    
                    
                    <div class="board_free_list_box">
                        <table class="board_free_list_content">
                        <thead>
                            <tr>
                                <th class="nth1">글 번호</th>
                                <th class="nth2">작성자</th>
                                <th class="nth3">제목</th>
                                <th class="nth4">날짜</th>
                                <th class="nth5">조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                        <!--데이터 받아오기-->
                        <td>글번호</td>
                        <td>작성자</td>
                        <td><a href="board_content.jsp">제목</a></td> <!--제목을 누르면 글 내용으로 이동함-->
                        <td>날짜</td>
                        <td>조회수</td>
    
                                <!-- <script>
            // 예시 데이터
            const boardData = [
                { id: 1, writer: '작성자1', title: '제목1', date: '2024-07-01', views: 123, comments: 4 },
                { id: 2, writer: '작성자2', title: '제목2', date: '2024-07-02', views: 456, comments: 2 },
                { id: 3, writer: '작성자3', title: '제목3', date: '2024-07-03', views: 789, comments: 5 },
            ];
    
            // 게시글 데이터를 HTML로 변환하여 테이블에 삽입
            function loadBoardData() {
                const tbody = document.getElementById('boardContent');
                tbody.innerHTML = '';
                boardData.forEach(post => {
                    const tr = document.createElement('tr');
                    tr.innerHTML = `
                        <td>${post.id}</td>
                        <td>${post.writer}</td>
                        <td><a href="board_content.html">${post.title} <span>(${post.comments} 댓글)</span></a></td>
                        <td>${post.date}</td>
                        <td>${post.views}</td>
                    `;
                    tbody.appendChild(tr);
                });
            } -->
    
            <!-- // 페이지 로드 시 게시글 데이터를 불러옴
            window.onload = loadBoardData; -->
    
    
                        </tbody>
                    </table> 
                </div>
                
                    <div class="page_nav">
                        <ul class="center">
                            <li><a href="첫페이지"><img src="../resources/img/board_img/ico_first.gif" alt="처음페이지"></a></li>
                            <li><a href="이전페이지"><img src="../resources/img/board_img/ico_prev.gif" alt="이전페이지"></a></li>
                            <li class="active"><a href="board_free_list.jsp" title="1페이지(선택됨)">1</a></li>
                            <li><a href="2페이지링크" title="2페이지">2</a></li>
                            <li><a href="3페이지링크" title="3페이지">3</a></li>
                            <li><a href="4페이지링크" title="4페이지">4</a></li>
                            <li><a href="5페이지링크" title="5페이지">5</a></li>
                            <li><a href="다음페이지"><img src="../resources/img/board_img/ico_next.gif" alt="다음페이지"></a></li>
                            <li><a href="마지막페이지"><img src="../resources/img/board_img/ico_last.gif" alt="마지막페이지"></a></li>
                        </ul>
                        <form action="board_write.jsp" class="right">
                            <button value="글쓰기" onclick="location.href='board_write.jsp'">작성</button>  
                        </form>   
                    </div>                     
                <div class="board_free_search">
                    <select class="board_free_search_box">
                        <option value="notice">전체</option>
                        <option value="writer">작성자</option>
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                    <input placeholder="검색어를 입력해 주세요" type="text">
                    <span>
                        <button class="btn" onclick="실행할JS함수/검색기능" type="submit">검색</button>
                    </span>
                </div>
                </div>                
            </div>
        </div>
</section>
    

