<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../include/header.jsp" %>
<body>
    <div class="jinseok-wrap">
        <div class="sum">
            <div class="nav">
                <ul>
                    <li><span class="nav-title">마이페이지</span></li>
                    <li><a href="${pageContext.request.contextPath}/mypage/getUserInfo.userinfo" class="tap">내 정보</a></li>
                    <li><a href="${pageContext.request.contextPath}/mypage/getUserInfo.userinfo">예약 현황</a></li>
                    <li><a href="${pageContext.request.contextPath}/mypage/deleteUserPage.userinfo">회원 탈퇴</a></li>
                </ul>
            </div>
            <div class="user-info">
                <p>내 정보</p>
                <div class="info-content">
                    <form id="userInfoForm" action="${pageContext.request.contextPath}/mypage/updateUserInfo.userinfo" method="post">
                        <div class="form-group">
                            <label for="usr">아이디 (변경불가)</label>
                            <input readonly type="text" class="form-control" id="usr" name="userId" value="${userInfo.userId}">
                        </div>
                        <div class="form-group pw-margin">
                            <label for="pwd">비밀번호</label>
                            <div class="input-group">
                                <input type="password" class="form-control" name="userPw" value="${userInfo.userPw}">
                                <div class="input-group-btn">
                                    <button class="btn btn-default pwBtn" type="button">비밀번호 표시</button>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="usr">이름</label>
                            <input type="text" class="form-control" name="userName" value="${userInfo.userName}">
                        </div>
                        <div class="form-group">
                            <label for="pwd">연락처</label>
                            <input type="text" class="form-control" name="userPno" value="${userInfo.userPno}">
                        </div>
                        <div class="form-group">
                            <label for="email">이메일</label>
                            <input type="email" class="form-control" name="userEmail" value="${userInfo.userEmail}">
                        </div>
                        <div class="form-group">
                            <label for="sel1">성별</label>
							<select class="form-control" name="userGender">
                                <option value="없음" ${userInfo.userGender == '없음' ? 'selected' : ''}>없음</option>
                                <option value="남성" ${userInfo.userGender == '남성' ? 'selected' : ''}>남성</option>
                                <option value="여성" ${userInfo.userGender == '여성' ? 'selected' : ''}>여성</option>
                                <option value="변화" ${userInfo.userGender == '변화' ? 'selected' : ''}>변화</option>
                            </select>
                        </div>
                        <input type="submit" class="jinseok-button" value="수정하기"></input>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        var pwBtn = document.querySelector(".pwBtn");
        pwBtn.onclick = function() {
            var pwInput = document.querySelector(".pw-margin .form-control");
            if (pwInput.type === "password") {
                pwInput.type = "text";
                pwBtn.textContent = "비밀번호 숨기기";
            } else {
                pwInput.type = "password";
                pwBtn.textContent = "비밀번호 표시";
            }
        }
    </script>
<%@ include file="../include/footer.jsp" %>