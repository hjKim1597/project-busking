<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jsp"%>

    <!-- 중앙 레이아웃 -->
    <section class="container customer-center-width" id="change">
        <div class="row">

            

            <!-- 공지사항 게시판 -->
            <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 board">
                <div class="service-board" >
                    <div class="container">
                        <div class="page-header">

                            <h2>글 작성하기</h2>

                        </div>
                        
                        
                        
                        <!-- 글작성하기 -->
                        <form action="registForm.customer" method="post" class="form" style="width:85%;">

                            <!-- 글 제목 -->
                            <div>
                                <label for="comment">제목</label>
                                <br>
                                <input class="" type="text" name="title" placeholder="제목을 입력해주세요">

                            </div>

                            <!-- 글 내용 -->
                            <div class="form-group" >
                                <label for="comment">글 내용</label>
                                <textarea class="form-control" id="comment" name="content" placeholder="내용을 입력해주세요"></textarea>
                            </div>

                            <!-- 완료 버튼-->
                            <div class="board_button_set">
                                <div class="board-button">
                                
                            <!-- 공지사항 목록에서 작성을 누르면? -->
                                    
                            <!-- FAQ 목록 페이지에서 작성을 누르면?  -->
                                
							    	                          
	                            	<a href="${pageContext.request.contextPath }/customer_center/customer_center_index.customer"><button type="button"
                                            class="btn btn-default">목록</button></a>
	                            
	                            
                                </div>

                                <div class="board-button">
                                
                                   
                                    
                                    <input type="submit" value="완료" class="btn btn-default">
                                    
                                </div>
                                
                                
                            </div>
                        </form>



                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 extra">
                <!-- 빈칸1 -->
            </div>

            <!-- <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 extra">
                빈칸2
            </div> -->

        </div>
    </section>

    
<%@ include file="../include/footer.jsp"%>

