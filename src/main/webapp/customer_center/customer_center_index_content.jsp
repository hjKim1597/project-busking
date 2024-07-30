<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jsp"%>

    <!-- 중앙 레이아웃 -->
    <section class="container customer-center-width" id="change">
        <div class="row">

			

			<!-- 공지사항 게시판 > 게시글 내용 보는 곳 -->
			<div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 board">
				<div class="service-board" >
					<div class="container">
						<div class="page-header">
							<h2>공지사항</h2>
						</div>
						<p>게시글 내용 보는 페이지</p>

						<!-- 글 내용 -->
						<div class="panel panel-default" style="width:85%;">
							<div class="panel-heading">${dto.noticeTitle }</div>
							<div class="panel-body">
								<p>${dto.noticeContent }</p>
							</div>

							<!-- 글 목록, 수정, 삭제 버튼-->
							<div class="board_button_set">
								<div class="board-button">
									<a href="customer_center_index.customer"><button
											type="button" class="btn btn-default">목록</button></a>
								</div>

								<div class="board-button">
									
                                   
                     				
                     				<input type="button" class="btn btn-default" value="수정" onclick="location.href='modify.customer?noticeNum=${dto.noticeNum}';">
                                    
                                            
                                    
								</div>

								<div class="board-button">
									<%-- 
									<a href="delete.customer">
										<button type="button" class="btn btn-default"
											onclick="location.href='delete.customer?noticeNum=${dto.noticeNum}';">삭제</button>
									</a> 
									--%>
									
									<input type="submit" class="btn btn-default" value="삭제" onclick="location.href='delete.customer?noticeNum=${dto.noticeNum}';">
									
								</div>
							</div>

						</div>

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

