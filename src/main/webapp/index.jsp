<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 

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
					<a
						href="${pageContext.request.contextPath }/reservation/reservation.jsp">
						<img
						src="${pageContext.request.contextPath }/resources/img/index/banner1.png"
						alt="res">
					</a>
					<div class="carousel-caption"></div>
				</div>

				<div class="item">
					<a
						href="${pageContext.request.contextPath }/board/board_news_list.board"><img
						src="${pageContext.request.contextPath }/resources/img/index/banner2.png"
						alt="issue"></a>
					<div class="carousel-caption"></div>
				</div>

				<div class="item">
					<a
						href="${pageContext.request.contextPath }/customer_center/customer_center_guide.jsp"><img
						src="${pageContext.request.contextPath }/resources/img/index/banner3.png"
						alt="guide"></a>
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
							<a href="${pageContext.request.contextPath }/customer_center/customer_center_index.customer">공지사항</a>
						</h3>

						<table class="index-board">
					
							<c:forEach var="dto" items="${CustomerList}">
								<tr>
									<td class="index-board-bottom " 
										style="border-bottom: 1px solid #e3e3e3; margin: 20px 0">
										<a href="#"  class="truncate">${dto.noticeTitle}</a>
										
									</td>
									<td class="preview-date"><fmt:formatDate value="${dto.noticeRegdate}" pattern="yy.MM.dd"/></td>
								</tr>

							</c:forEach>


						</table>
					</div>
				</div>

				<div class="col-md-4 preview-box">
					<div class="preview-title">
						<!-- 게시판 -->
						<h3>
							<a
								href="${pageContext.request.contextPath }/board/board_news_list.boardNews">소식게시판</a>
						</h3>


				

						<table class="index-board">
														
							<c:forEach var="dto" items="${NewsList}">
								<tr>
									<td class="index-board-bottom "
										style="border-bottom: 1px solid #e3e3e3; margin: 20px;">
										<a href="#" class="truncate">${dto.newsTitle}</a>
									</td>
									<td class="preview-date"><fmt:formatDate value="${dto.newsRegdate}" pattern="yy.MM.dd"/></td>
								</tr>
							</c:forEach>



						</table>
					</div>
					
				</div>

				<div class="col-md-4 preview-box">
					<div class="preview-title">
						<!-- 게시판 -->
						<h3>
							<a
								href="${pageContext.request.contextPath }/customer_center/customer_center_FAQ.jsp">FAQ</a>
						</h3>

						<table class="index-board" id="board-three">				
							
							<c:forEach var="dto" items="${FAQList}">
								<tr>
									<td class="index-board-bottom "
										style="border-bottom: 1px solid #e3e3e3; margin: 20px 0">
										<a href="#"  class="truncate">${dto.faqTitle}</a>
									</td>
									<td class="preview-date"><fmt:formatDate value="${dto.faqRegdate}" pattern="yy.MM.dd"/></td>
								</tr>
							</c:forEach>
							
							
						</table>
					</div>
				</div>
			</div>

			<div class="container location-pic">
				<h2>Book Your Busking Spot</h2>
				<p>최고의 버스킹 장소를 발견하고, 당신의 음악 여정을 시작하세요.</p>

				<div class="contents-pic">

					<div class="result">
						<div>
							<a id="mainImageLink"
								href="${pageContext.request.contextPath }/reservation/reservation.jsp">
								<img
								src="${pageContext.request.contextPath }/resources/img/index/1.jpg"
								alt="결과" class="main-image" width="100%">
							</a>
							<div></div>
						</div>
					</div>

					<ul class="list">
						<li><img
							src="${pageContext.request.contextPath }/resources/img/index/1.jpg"
							alt="1" width="100"
							data-link="${pageContext.request.contextPath }/reservation/reservation.jsp"></li>
						<li><img
							src="${pageContext.request.contextPath }/resources/img/index/2.jpg"
							alt="1" width="100"
							data-link="${pageContext.request.contextPath }/reservation/reservationForm.jsp"></li>
						<li><img
							src="${pageContext.request.contextPath }/resources/img/index/3.jpg"
							alt="1" width="100"
							data-link="${pageContext.request.contextPath }/reservation/reservationPost.jsp"></li>
						<li><img
							src="${pageContext.request.contextPath }/resources/img/index/4.jpg"
							alt="1" width="100" data-link="#"></li>
					</ul>

				</div>

				<script>
					var list = document.querySelector(".list");
					var mainImage = document.querySelector(".main-image");
					var mainImageLink = document
							.getElementById("mainImageLink");

					list.onclick = function(event) {
						if (event.target.tagName != "IMG")
							return;

						mainImage.classList.add("fade-out");

						setTimeout(function() {
							mainImage.src = event.target.src;
							mainImage.classList.remove("fade-out");

							mainImage.classList.add("fade-in");

							mainImageLink.href = event.target
									.getAttribute("data-link");

							setTimeout(function() {
								mainImage.classList.remove("fade-in");
							}, 500);
						}, 500);
					};
				</script>

			</div>
		</div>

	</section>
</div>




<script>
	addEventListener
	event.preventDefault
	pageUl.querySelectorAll(".page_li").forEach((li) => li.value == pageNum ? li.classList.add("active") : li);
</script>



<%@ include file="include/footer.jsp"%>