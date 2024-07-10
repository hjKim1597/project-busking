<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../resources/css/board_free_list.css">

<body>
    
    <section>  

        <div class="board_nav">
            <iframe src="board_nav.jsp" frameborder="0" width="200px" height="100%" scrolling="no"></iframe>
        </div>

        <div class="wrap_board_free">              
            <div class="wrap_board_free_list">
                <h1>FREE BOARD</h1>
                
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
<!--                     <tbody>
                        데이터 받아오기
                        <td>번호</td>
                        <td>작성</td>
                        <td><a href="board_content.html">제목</a></td> 제목을 누르면 글 내용으로 이동함
                        <td>날짜</td>
                        <td>조회수</td>
                    </tbody> -->
                </table> 
                    <div class="page_nav">
                        <ul class="center">
                            <li><a href="첫페이지"><img src="../resources/imges/ico_first.gif" alt="처음페이지"></a></li>
                            <li><a href="이전페이지"><img src="../resources/imges/ico_prev.gif" alt="이전페이지"></a></li>
                            <li class="active"><a href="board_free_list.jsp" title="1페이지(선택됨)">1</a></li>
                            <li><a href="2페이지링크" title="2페이지">2</a></li>
                            <li><a href="3페이지링크" title="3페이지">3</a></li>
                            <li><a href="4페이지링크" title="4페이지">4</a></li>
                            <li><a href="5페이지링크" title="5페이지">5</a></li>
                            <li><a href="다음페이지"><img src="../resources/imges/ico_next.gif" alt="다음페이지"></a></li>
                            <li><a href="마지막페이지"><img src="../resources/imges/ico_last.gif" alt="마지막페이지"></a></li>
                        </ul>
                        <form action="board_write.html" class="right">
                            <button value="글쓰기" onclick="board_write.html">글쓰기</button>  
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
    

    
</body>
</html>

    