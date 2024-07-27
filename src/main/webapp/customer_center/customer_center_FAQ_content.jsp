<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jsp"%>


    <!-- 중앙 레이아웃 -->
    <section class="container customer-center-width" id="change">
        <div class="row" style="margin-top : 100px;">

            <!-- 좌측메뉴 -->
            
            
            <!-- 
            
            <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 content">
                <li class="col-xs-4 col-sm-4 col-lg-4 col-lg-4">
                    <section>
                        <div class="service_menu">
                            <nav>
                                <div class="span"></div>
                                <h1>고객센터</h1>
                                <ul class="menu">
                                    <li class="nth1"><strong><a href="customer_center_index.customer"><span>공지사항</span></a></strong>
                                    </li>
                                    <li class="nth2"><strong><a href="customer_center_res.customer"><span>이달의 예약</span></a></strong>
                                    </li>
                                    <li class="nth3"><strong><a href="customer_center_guide.customer"><span>이용안내</span></a></strong>
                                    </li>
                                    <li class="nth4"><strong><a href="customer_center_FAQ.customer"><span>자주묻는질문(FAQ)</span></a></strong>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </section>
                </li>
            </div>
            
            -->
            


            <!-- 공지사항 게시판 > 게시글 내용 보는 곳 -->
            <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 board">
                <div class="service-board">
                    <div class="container">
                        <div class="page-header">
                            <h2>자주묻는질문FAQ</h2>
                        </div>
                        <p></p>

                        <!-- 글 내용 -->
                        <div class="panel panel-default">
                            <div class="panel-heading">${dto.faqTitle }</div>
                            <div class="panel-body">
                           		<p>${dto.faqContent }</p>
                            </div>

                            <!-- 글 목록, 수정, 삭제 버튼-->
							<div class="board_button_set" style="text-align: right">
                                <div class="board-button" style="display: inline; padding: 8px;">
									<a href="customer_center_FAQ.customer"><button
											type="button" class="btn btn-default">목록</button></a>
								</div>

                                <div class="board-button" style="display: inline; padding: 8px;">
									
                     				<input type="button" class="btn btn-default" value="수정" onclick="location.href='modifyFAQ.customer?faqNum=${dto.faqNum}';">
                                    
								</div>

                                <div class="board-button" style="display: inline; padding: 8px;">
									<%-- 
									<a href="delete.customer">
										<button type="button" class="btn btn-default"
											onclick="location.href='delete.customer?faqNum=${dto.faqNum}';">삭제</button>
									</a> 
									--%>
									
									<input type="submit" class="btn btn-default" value="삭제" onclick="location.href='deleteFAQ.customer?faqNum=${dto.faqNum}';">
									
								</div>
							</div>
							
						
                        </div>

                    </div>
                </div>
            </div>


        </div>
    </section>

   
<%@ include file="../include/footer.jsp"%>
