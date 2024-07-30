<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

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
					<a class="navbar-brand index-menu"
						>사이트 명</a>
				</div>
				<div class="collapse navbar-collapse main-color mobile-navbar hea-rightpd"
					id="myNavbar">
					<ul class="nav navbar-nav">

						<li class="active index-menu"><a
							href="${pageContext.request.contextPath }/index.main">Main</a></li>

						<!-- 예약 -->
						<li class="header-res"><a
							href="${pageContext.request.contextPath }/reservation/reservation.reservation"
							class="index-menu">예약하기</a></li>

						<!-- 게시판 -->
						<li class="dropdown"><a class="dropdown-toggle index-menu"
							data-toggle="dropdown" href="#">게시판 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="${pageContext.request.contextPath }/board/board_list.boardNews">NEWS</a></li>
								<li><a
									href="${pageContext.request.contextPath }/board/board_list.boardFree">자유게시판</a></li>
								<li><a
									href="${pageContext.request.contextPath }/board/board_list.boardTeam">팀원모집</a></li>
								<li><a
									href="${pageContext.request.contextPath }/board/board_list.boardAsk">Q & A</a></li>
							</ul></li>


						<!-- 마이페이지 -->
						<li class="dropdown" id="mypage-menu"><a href="#">마이페이지</a></li>



						<script type="text/javascript">
						    $(document).ready(function() {
						        var adminIds = ["hangang01", "hangang02", "hangang03", "hangang04", "hangang05", "hangang06", "hangang07", "hangang08", "hangang09", "hangang10", "hangang11"];
						        var userId = '<%= (String) session.getAttribute("userId") %>';
						        var isAdmin = userId && adminIds.includes(userId);
						
						        if (userId) {
						            if (isAdmin) {
						                $("#mypage-menu").html('<a href="${pageContext.request.contextPath}/mypage/adminPage.admin">예약관리</a>');
						            } else {
						                $("#mypage-menu").html('<a class="dropdown-toggle index-menu" data-toggle="dropdown" href="#">마이페이지 <span class="caret"></span></a>' +
						                    '<ul class="dropdown-menu">' +
						                    '<li><a href="${pageContext.request.contextPath}/mypage/getUserInfo.userinfo">내정보</a></li>' +
						                    '<li><a href="${pageContext.request.contextPath}/mypage/reservationInfo.userinfo">예약현황</a></li>' +
						                    '<li><a href="${pageContext.request.contextPath}/mypage/deleteUserPage.userinfo">회원탈퇴</a></li>' +
						                    '</ul>');
						            }
						        }
						    });
						</script>
						
						
						<!-- 고객센터 -->

						<li class="dropdown"><a class="dropdown-toggle index-menu"
							data-toggle="dropdown" href="#">고객센터 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="${pageContext.request.contextPath }/customer_center/customer_center_index.customer">공지사항</a></li>
								<li><a
									href="${pageContext.request.contextPath }/customer_center/customer_center_res.customer">이달의예약</a></li>
								<li><a
									href="${pageContext.request.contextPath }/customer_center/customer_center_guide.customer">이용안내</a></li>
								<li><a
									href="${pageContext.request.contextPath }/customer_center/customer_center_FAQ.customer">자주묻는질문</a></li>
							</ul></li>


					</ul>
					<ul class="nav navbar-nav navbar-right">

                    <% if (session.getAttribute("user") != null) { %>
                        <% boolean adminCheck = (Boolean) session.getAttribute("adminCheck"); %>
                        <li><a href="<%= adminCheck ? request.getContextPath() + "/mypage/adminPage.admin" : "#" %>">${user.userName}님 환영합니다</a></li>
                        <li><a href="${pageContext.request.contextPath}/userjoin/logout.mypage" class="header-right"><span class="glyphicon glyphicon-off"></span> 로그아웃</a></li>
                        <% } else { %>
                            <li><a href="${pageContext.request.contextPath}/userjoin/loginPage.mypage" class="header-right"><span class="glyphicon glyphicon-user"></span> 로그인</a></li>
                            <li><a href="${pageContext.request.contextPath}/userjoin/signupPage.mypage" class="header-right"><span class="glyphicon glyphicon-log-in"></span> 회원가입</a></li>
                        <% } %>
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