<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet" href="../resources/css/board_css/bootstrap.min.css">
<script src="../resources/js/jquery-3.7.1.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../resources/css/custom-reset.css">
<link rel="stylesheet" href="../resources/css/board/board_nav.css">
</head>

    
<nav class="board_nav">
    <div id="board_nav_wrap">
        <h1>BOARD</h1>
        <ul class="menu">
            <li class="nth1"><strong><a href="board_news_list.jsp">NEWS</a></strong></li>
            <li class="nth2"><strong><a href="board_free_list.jsp">자유게시판</a></strong></li>
            <li class="nth3"><strong><a href="board_team_list.jsp">팀원 모집</a></strong></li>
            <li class="nth4"><strong><a href="board_ask_list.jsp">Q & A</a></strong></li>
        </ul>
    </div>
</nav>

<!-- <script> *활성화 된 버튼에 표시하기*
    document.addEventListener("DOMContentLoaded", function() {
        var path = window.location.pathname;
        var menuItems = document.querySelectorAll(".board_nav .menu li");

        menuItems.forEach(function(item) {
            var link = item.querySelector("a");
            if (link) {
                var href = new URL(link.getAttribute("href"), window.location.origin).pathname;
                if (href === path) {
                    item.classList.add("active");
                }
            }
        });
    });
</script> -->