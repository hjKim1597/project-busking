<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="include/header.jsp"%>

	<section class="content">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
	
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="resources/img/banner1.png" alt="res">
					<div class="carousel-caption">
						<h2>예약하기</h2>
						<p>예약 페이지로 바로가기</p>
					</div>
				</div>
	
				<div class="item">
					<img src="resources/img/banner2.png" alt="issue">
					<div class="carousel-caption">
						<h2>소식</h2>
						<p>소식 페이지로 바로가기</p>
					</div>
				</div>
	
				<div class="item">
					<img src="resources/img/banner3.png" alt="guide">
					<div class="carousel-caption">
						<h2>이용안내</h2>
						<p>이용안내 페이지로 바로가기</p>
					</div>
				</div>
			</div>
	
			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	
	
	</section>





<%@ include file="include/footer.jsp"%>