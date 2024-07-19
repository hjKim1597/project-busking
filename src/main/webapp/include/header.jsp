<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<!-- 부트스트랩 css 링크 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
<!-- 제이쿼리(부트스트랩보다 먼저 링크해야함) -->
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.min.js"></script>
<!-- 부트스트랩 js링크 -->
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/index/index.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/board/board_nav.css">

<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css"
	rel="stylesheet">
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>

<!-- 고객센터 index css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/customer_center_css/customer_center_index.css">

<!-- 웹폰트 -->
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css"
	rel="stylesheet">
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css"
	rel="stylesheet">
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css"
	rel="stylesheet">


</head>
<body>

	<nav class="navbar navbar-inverse index-header header-padding">
		<div style="background-color: white;">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand index-menu" href="#">사이트 명</a>
				</div>
				<div class="collapse navbar-collapse main-color" id="myNavbar">
					<ul class="nav navbar-nav">

						<li class="active index-menu"><a href="#">Main</a></li>

						<li class="header-res"><a href="#" class="index-menu">예약하기</a></li>

						<!-- 게시판 -->
						<li class="dropdown"><a class="dropdown-toggle index-menu"
							data-toggle="dropdown" href="#">게시판 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="${pageContext.request.contextPath }/board/board_news_list.board">NEWS</a></li>
								<li><a
									href="${pageContext.request.contextPath }/board/board_free_list.board">자유게시판</a></li>
								<li><a
									href="${pageContext.request.contextPath }/board/board_team_list.board">팀원
										모집</a></li>
								<li><a
									href="${pageContext.request.contextPath }/board/board_ask_list.board">Q
										& A</a></li>
							</ul></li>


						<!-- 마이페이지  -->
						<li class="dropdown"><a class="dropdown-toggle index-menu"
							data-toggle="dropdown" href="#">마이페이지 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="${pageContext.request.contextPath }/board/board_news_list.board">내정보</a></li>
								<li><a
									href="${pageContext.request.contextPath }/board/board_free_list.board">예약현황</a></li>
								<li><a
									href="${pageContext.request.contextPath }/board/board_team_list.board">회원탈퇴</a></li>
							</ul></li>


						<!-- 고객센터 -->

						<li class="dropdown"><a class="dropdown-toggle index-menu"
							data-toggle="dropdown" href="#">고객센터 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="${pageContext.request.contextPath }/board/board_news_list.board">공지사항</a></li>
								<li><a
									href="${pageContext.request.contextPath }/board/board_free_list.board">이달의예약</a></li>
								<li><a
									href="${pageContext.request.contextPath }/board/board_team_list.board">이용안내</a></li>
								<li><a
									href="${pageContext.request.contextPath }/board/board_ask_list.board">자주묻는질문</a></li>
							</ul></li>



					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#" class="header-right"><span
								class="glyphicon glyphicon-user"></span> 로그인</a></li>
						<li><a href="#" class="header-right"><span
								class="glyphicon glyphicon-log-in"></span> 회원가입</a></li>
					</ul>

				</div>
			</div>
		</div>

	</nav>



	<script type="text/javascript">
		var uri = '${pageContext.request.requestURI}';
		var pages = uri.split('/');
		var page = pages[pages.length - 1];
		var cssFile = page.substring(0, page.length - 3);
		var folder = pages[pages.length - 2];
		//console.log('${pageContext.request.contextPath }/resources/css/' + folder + "/" + cssFile + "css");

		var link = document.createElement("link");
		link.rel = "stylesheet";
		link.href = "${pageContext.request.contextPath }/resources/css/"
				+ folder + "/" + cssFile + "css";

		document.querySelector("head").appendChild(link);
	</script>