<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../include/header.jsp" %>
<body>
    
    <div class="jinseok-wrap">
        <div class="findidpw-wrap">
            <div class="login-wrap-border">
                <p>아이디 찾기</p>
                <form class="findid" onsubmit="return false;">
                    <label for="email-findId">이메일</label>
                    <div class="form-group">
                        <input type="text" class="form-control" id="email-findId" placeholder="가입하신 이메일을 입력하세요.">
                    </div>
                    <label for="phone-findId">연락처</label>
                    <div class="form-group">
                        <input type="text" class="form-control" id="phone-findId" placeholder="가입하신 연락처를 입력하세요.">
                    </div>
                    <input type="button" class="jinseok-button" value="아이디 찾기" onclick="findId()"></input>
                    <div class="form-group" style="margin-top: 15px;">
                        <input readonly type="text" class="form-control" id="foundId" placeholder="아이디 나오는 칸">
                    </div>
                </form>
            </div>
            <p style="margin-top: 35px;">비밀번호 찾기</p>
            <form class="findpw" onsubmit="return false;">
                <label for="id-findPw">아이디</label>
                <div class="form-group">
                    <input type="text" class="form-control" id="id-findPw" placeholder="가입하신 아이디를 입력하세요.">
                </div>
                <label for="phone-findPw">연락처</label>
                <div class="form-group">
                    <input type="text" class="form-control" id="phone-findPw" placeholder="가입하신 연락처를 입력하세요.">
                </div>
                <input type="button" class="jinseok-button" value="비밀번호 찾기" onclick="findPw()"></input>
                <div class="form-group" style="margin-top: 15px;">
                    <input readonly type="text" class="form-control" id="foundPw" placeholder="비밀번호 나오는 칸">
                </div>
            </form>
        </div>
    </div>

    <script>
        function findId() {
            var email = document.getElementById('email-findId').value;
            var phone = document.getElementById('phone-findId').value;

            fetch('findId.mypage?email=' + email + '&phone=' + phone)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('foundId').value = data;
                })
                .catch(error => console.error('Error:', error));
        }

        function findPw() {
            var id = document.getElementById('id-findPw').value;
            var phone = document.getElementById('phone-findPw').value;

            fetch('findPw.mypage?id=' + id + '&phone=' + phone)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('foundPw').value = data;
                })
                .catch(error => console.error('Error:', error));
        }
    </script>
<%@ include file="../include/footer.jsp" %>