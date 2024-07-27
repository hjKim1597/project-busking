<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../include/header.jsp" %>
<style>
	.jinseok-wrap > .sum {margin: 0 auto;}
	.jinseok-wrap > .sum > p {text-align: center;}
	.button-container {text-align: center; margin-top: 20px;}
    .btn-custom {
        display: inline-block;
        padding: 10px 20px;
        margin: 5px;
        border-radius: 5px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
    }
    .btn-custom:hover {
        background-color: #0056b3;
    }
</style>
<body>
    <div class="jinseok-wrap" style="margin-top: 200px;">
        <div class="sum">
            <h3 class="title" style="text-align:center;">회원가입 성공</h3>
            <p>회원가입이 성공적으로 완료되었습니다.</p>
            <div class="button-container">
                <a href="${pageContext.request.contextPath}/index.main" class="btn-custom">메인페이지</a>
                <a href="${pageContext.request.contextPath}/userjoin/login.mypage" class="btn-custom">로그인</a>
            </div>
        </div>
    </div>
</body>
<%@ include file="../include/footer.jsp" %>