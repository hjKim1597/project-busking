<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="include/header.jsp"%>


<div class="index-wrap">
	<section class="index-content">
		<!-- =====================인덱스 배너 부분===================== -->
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
					<img
						src="${pageContext.request.contextPath }/resources/img/index/banner1.png"
						alt="res" />
					<div class="carousel-caption"></div>
				</div>

				<div class="item">
					<img
						src="${pageContext.request.contextPath }/resources/img/index/banner2.png"
						alt="issue" />
					<div class="carousel-caption"></div>
				</div>

				<div class="item">
					<img
						src="${pageContext.request.contextPath }/resources/img/index/banner3.png"
						alt="guide" />
					<div class="carousel-caption"></div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span class="sr-only">Next</span>
			</a>
		</div>

		<div class="container index-preview">
			<!-- 게시판 위 타이틀 -->
			<div class="middle-title">
				<h2 class="middle-name">Book Your Busking Spot</h2>
				<h4>최고의 버스킹 장소를 발견하고, 당신의 음악 여정을 시작하세요.</h4>
			</div>

			

			<!-- 콘텐츠 공지사항/게시판 미리보기 -->
			<div class="row middle-row" style="margin: 0 10%">
				<div class="col-md-4 preview-box">
					<div class="preview-title">
						<!-- 게시판 -->
						<h3>
							<a href="#">공지사항</a>
						</h3>

						<table class="index-board">
							<tr>
								<div class="index-board-bottom"
									style="border-bottom: 1px solid #e3e3e3; margin: 20px 0">
									<td><a href="#">2024년 7월 한강공원 내 야구장</a></td>
									<td>24.07.09</td>
								</div>
							</tr>
							<tr>
								<td><a href="#">서울시 공공서비스 예약 홈페이지 서비스</a></td>
								<td>24.07.02</td>
							</tr>
							<tr>
								<td><a href="#">[지방폐교를 활용한 서울캠핑장] '24. 8월</a></td>
								<td>24.07.01</td>
							</tr>
							<tr>
								<td><a href="#">2024년 7월 한강공원 내 야구장</a></td>
								<td>24.06.26</td>
							</tr>
						</table>
					</div>
				</div>

				<div class="col-md-4 preview-box">
					<div class="preview-title">
						<!-- 게시판 -->
						<h3>
							<a href="#">게시판</a>
						</h3>

						<table class="index-board">
							<tr>
								<div class="index-board-bottom"
									style="border-bottom: 1px solid #e3e3e3; margin: 20px 0">
									<td><a href="#">2024년 7월 한강공원 내 야구장</a></td>
									<td>24.07.09</td>
								</div>
							</tr>
							<tr>
								<td><a href="#">서울시 공공서비스 예약 홈페이지 서비스</a></td>
								<td>24.07.02</td>
							</tr>
							<tr>
								<td><a href="#">[지방폐교를 활용한 서울캠핑장] '24. 8월</a></td>
								<td>24.07.01</td>
							</tr>
							<tr>
								<td><a href="#">2024년 7월 한강공원 내 야구장</a></td>
								<td>24.06.26</td>
							</tr>
						</table>
					</div>
				</div>

				<div class="col-md-4 preview-box">
					<div class="preview-title">
						<!-- 게시판 -->
						<h3>
							<a href="#">게시판</a>
						</h3>

						<table class="index-board" id="board-three">
							<tr>
								<div class="index-board-bottom"
									style="border-bottom: 1px solid #e3e3e3; margin: 20px 0">
									<td><a href="#">2024년 7월 한강공원 내 야구장</a></td>
									<td>24.07.09</td>
								</div>
							</tr>
							<tr>
								<td><a href="#">서울시 공공서비스 예약 홈페이지 서비스</a></td>
								<td>24.07.02</td>
							</tr>
							<tr>
								<td><a href="#">[지방폐교를 활용한 서울캠핑장] '24. 8월</a></td>
								<td>24.07.01</td>
							</tr>
							<tr>
								<td><a href="#">2024년 7월 한강공원 내 야구장</a></td>
								<td>24.06.26</td>
							</tr>
						</table>
					</div>
				</div>
			</div>


			<div class="container location-pic">
				<h2>Book Your Busking Spot</h2>
				<p>최고의 버스킹 장소를 발견하고, 당신의 음악 여정을 시작하세요.</p>

				<div class="col-md-4">
					<div class="thumbnail">
						<a
							href="${pageContext.request.contextPath }/resources/img/index/location_pic.png"
							target="_blank"> <img
							src="${pageContext.request.contextPath }/resources/img/index/location_pic.png"
							alt="Lights" style="width: 100%" />
							<div class="caption">
								<p class="pic-margin">광나루 버스킹 1 천호대교 남단</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<a
							href="${pageContext.request.contextPath }/resources/img/index/location_pic.png"
							target="_blank"> <img
							src="${pageContext.request.contextPath }/resources/img/index/1.jpg"
							alt="Nature" style="width: 100%" />
							<div class="caption">
								<p>서울특별시 송파구 풍납동</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<a
							href="${pageContext.request.contextPath }/resources/img/index/location_pic.png"
							target="_blank"> <img
							src="${pageContext.request.contextPath }/resources/img/index/3.jpg"
							alt="Fjords" style="width: 100%" />
							<div class="caption">
								<p>서울특별시 송파구 풍납동</p>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>

	</section>
</div>










<%@ include file="include/footer.jsp"%>