<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../include/header.jsp" %>
<body>
    <div class="jinseok-wrap">
        <div class="login-wrap">
            <div class="login-wrap-border">
                <p>로그인</p>
                <form action="${pageContext.request.contextPath}/userjoin/login.mypage" method="post" onsubmit="saveId()">
                    <div class="input-group id">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                      <input id="userId" type="text" class="form-control" name="userId" placeholder="아이디를 입력하세요." required>
                    </div>
                    <div class="input-group pw">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                      <input id="userPw" type="password" class="form-control" name="userPw" placeholder="비밀번호를 입력하세요." required>
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox" id="rememberId" name="rememberId"><p style="font-size: 12px; line-height: 20px;">아이디 저장하기</p></label>
                    </div>
                    <input type="submit" class="jinseok-button" value="로그인">
                    <div class="sub-wrap" style="color: #a0a0a0;">
                        <a href="${pageContext.request.contextPath}/userjoin/findIdPw.mypage">비밀번호 찾기</a> | 
                        <a href="${pageContext.request.contextPath}/userjoin/findIdPw.mypage">아이디 찾기</a> |
                        <a href="${pageContext.request.contextPath}/userjoin/signupPage.mypage">회원가입</a>
                    </div>
                </form>
            </div>
            
            <p>홈페이지 바로가기</p>
            <div class="social-login">
                <div class="icon-all">
                    <a href="https://www.naver.com/"><img src="../resources/img/Naver.png" alt=""></a>
                    <a href="https://www.kakaocorp.com/page/service/service/KakaoTalk"><img src="../resources/img/Kakao.png" alt=""></a>
                    <a href="https://www.google.com/" class="google"><img src="../resources/img/web_neutral_sq_na@4x.png" alt=""></a>
                </div>
            </div>
        </div>
    </div>
    <script>
        var userId = document.getElementById('userId');
        var rememberId = document.getElementById("rememberId");

        function saveId() {
            if (rememberId.checked) {
                localStorage.setItem("userId", userId.value);
            } else {
                localStorage.removeItem("userId");
            }
        }

        function loadId() {
            var savedId = localStorage.getItem("userId");
            if (savedId) {
                document.getElementById('userId').value = savedId;
                document.getElementById('rememberId').checked = true;
            }
        }

        window.onload = loadId;
    </script>
<%@ include file="../include/footer.jsp" %>
</body>
</html>