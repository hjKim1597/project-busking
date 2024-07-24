<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<%@ include file="../include/header.jsp" %>
    
<section id="board_news_list_wrap">  
  
    <nav class="board_nav">
	    <div id="board_nav_wrap">
	        <h1>BOARD</h1>
	        <ul class="menu">
	            <li class="nth1 active"><strong><a href="board_list.boardNews">NEWS</a></strong></li>
	            <li class="nth2"><strong><a href="board_free_list.boardFree">자유게시판</a></strong></li>
	            <li class="nth3"><strong><a href="board_team_list.boardTeam">팀원 모집</a></strong></li>
	            <li class="nth4"><strong><a href="board_ask_list.boardAsk">Q & A</a></strong></li>
	        </ul>
	    </div>
	</nav>

        <div class="wrap_board_news">              
            <div class="wrap_board_news_list">
                <div class="add">
                    <div class="wrap_board_news_list_title">
                        <div><strong>NEWS</strong></div>
                    </div>
                    
                    
                    <div class="board_news_list_box">
                        <table class="board_news_list_content">
                        <thead>
                            <tr>
                                <th class="nth1">글 번호</th>
                                <th class="nth2">작성자</th>
                                <th class="nth3">뉴스 제목</th>
                                <th class="nth4">날짜</th>
                                <th class="nth5">조회수</th>
                            </tr>
                        </thead>
                        <tbody>
	                        <!--데이터 받아오기-->
	                        <c:forEach var="dto" items="${newsList }">
								<tr>
									<td>${dto.newsNum }</td>
									<td>${dto.newsWriter }</td>
									<td><a href="board_content.boardNews?bno=${dto.newsNum }">${dto.newsTitle }</a></td>
									<td><fmt:formatDate value="${dto.newsRegdate }" pattern="yy.MM.dd"/></td>
									<td>${dto.newsHit }</td>
								</tr>
							</c:forEach>
                        
    
                        </tbody>
                    </table> 
                </div>
                
                    <div class="page_nav">
                        <ul class="center">
                            <li id="page_first"><a href="board_list.boardNews"><img src="../resources/img/board_img/ico_first.gif" alt="처음페이지"></a></li>
                            <c:if test="${pageVO.prev }">
	                            <li id="page_prev"><a href="board_list.boardNews?page=${pageVO.pageNum - 1 }"><img src="../resources/img/board_img/ico_prev.gif" alt="이전페이지"></a></li>                            
                            </c:if>
                            <c:forEach var="i" begin="${pageVO.startPage }" end="${pageVO.endPage }" step="1">
                            	<li class="page_li" data-page="${i }"><a href="board_news_list.boardNews?page=${i }" title="1페이지">${i }</a></li>	
                            </c:forEach>
                            <c:if test="${pageVO.next }">
	                            <li id="page_next"><a href="board_list.boardNews?page=${pageVO.pageNum + 1 }"><img src="../resources/img/board_img/ico_next.gif" alt="다음페이지"></a></li>
                            </c:if>
                            <li id="page_last"><a href="board_list.boardNews?page=${pageVO.endPage }"><img src="../resources/img/board_img/ico_last.gif" alt="마지막페이지"></a></li>
                        </ul>
                        <form action="board_write.boardNews" class="right">
                            <button value="글쓰기">작성</button>  
                        </form>  
                    </div>                     
                <div class="board_news_search">
                    <select class="board_news_search_box">
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
    
	<script src="${pageContext.request.contextPath }/resources/js/board/board_list.js"></script>
    
<%@ include file="../include/footer.jsp" %>

