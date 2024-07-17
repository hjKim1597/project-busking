<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

	<!-- 부트스트랩 css 링크 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
	<!-- 제이쿼리(부트스트랩보다 먼저 링크해야함) -->
	<script src="${pageContext.request.contextPath }/resources/js/jquery-3.7.1.min.js"></script>
	<!-- 부트스트랩 js링크 -->
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
	
	<!-- 웹폰트 -->
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">

</head>
<body>
    
    <header class="header">
        <div class="header-wrap">
            <div class="top">

                <div class="top-img">
                    <img src="${pageContext.request.contextPath }/resources/img/project_logo.png" style="max-width: 100%; height: auto;" alt="로고사진">
                </div>

                <div class="top-left">
                    사이트명
                </div>

                <div class="menu">
                    <ul>
                        <li><a href="#">Main</a></li>
                        <li><a href="#">예약하기</a></li>
                        <li><a href="#">자유게시판</a></li>
                        <li><a href="#">고객센터</a></li>
                        <li><a href="#">마이페이지</a></li>
                    </ul>
                </div>

                <div class="top-right">
                    <ul>
                        <li><a href="#">로그인</a></li>
                        <li><a href="#">회원가입</a></li>

                    </ul>
                </div>
            </div>
        </div>
    </header>
    
	<script type="text/javascript">
		var uri = '${pageContext.request.requestURI}';
		var pages = uri.split('/');
		var page = pages[pages.length - 1];
		var cssFile = page.substring(0, page.length - 3);
		var folder = pages[pages.length - 2];
		//console.log('${pageContext.request.contextPath }/resources/css/' + folder + "/" + cssFile + "css");
		
		var link = document.createElement("link");
		link.rel = "stylesheet";
		link.href = '${pageContext.request.contextPath }/resources/css/' + folder + "/" + cssFile + "css";

		document.querySelector("head").appendChild(link);
		
	</script>    
    
    