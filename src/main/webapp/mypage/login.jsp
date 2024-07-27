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
                <form action="${pageContext.request.contextPath}/userjoin/login.mypage" method="post">
                    <div class="input-group id">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                      <input id="userId" type="text" class="form-control" name="userId" placeholder="아이디를 입력하세요." required>
                    </div>
                    <div class="input-group pw">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                      <input id="userPw" type="password" class="form-control" name="userPw" placeholder="비밀번호를 입력하세요." required>
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox" id="keepLogin" name="keepLogin"><p style="font-size: 12px; line-height: 20px;">로그인 상태 유지</p></label>
                    </div>
                    <input type="submit" class="jinseok-button" value="로그인">
                    <div class="sub-wrap" style="color: #a0a0a0;">
                        <a href="${pageContext.request.contextPath}/userjoin/findIdPw.mypage">비밀번호 찾기</a> | 
                        <a href="${pageContext.request.contextPath}/userjoin/findIdPw.mypage">아이디 찾기</a> |
                        <a href="${pageContext.request.contextPath}/userjoin/signupPage.mypage">회원가입</a>
                    </div>
                </form>
            </div>
            
            <p>sns 연동 로그인</p>
            <div class="social-login">
                <div class="icon-all">
                    <a href=""><img src="../resources/img/Naver.png" alt=""></a>
                    <a href=""><img src="../resources/img/Kakao.png" alt=""></a>
                    <a href=""class="google"><img src="../resources/img/web_neutral_sq_na@4x.png" alt=""></a>
                </div>
            </div>
        </div>
    </div>
    <script>
        document.getElementById("loginForm").onsubmit = function() {
            if (document.getElementById("keepLogin").checked) {
                setCookie("keepLogin", "true", 7); // 7일 동안 유지되는 쿠키 설정
            } else {
                setCookie("keepLogin", "true", -1); // 쿠키 제거
            }
        };

        function setCookie(name, value, days) {
            var expires = "";
            if (days) {
                var date = new Date();
                date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
                expires = "; expires=" + date.toUTCString();
            }
            document.cookie = name + "=" + (value || "") + expires + "; path=/";
        }

        function getCookie(name) {
            var nameEQ = name + "=";
            var ca = document.cookie.split(';');
            for(var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') c = c.substring(1, c.length);
                if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
            }
            return null;
        }
    </script>
<%@ include file="../include/footer.jsp" %>
</body>
</html>