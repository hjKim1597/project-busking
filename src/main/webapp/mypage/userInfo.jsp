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
                    <li><a href="${pageContext.request.contextPath}/mypage/reservationInfo.userinfo">예약 현황</a></li>
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
                        <div class="form-group pw-margin" style="margin-bottom: 15px">
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
                        <label for="userAddr">주소</label> <br>
	                    <!-- 우편찾기 주소 -->
	                    <div class="input-group id-content" style="margin-bottom: 15px">
	                        <input type="text" class="form-control write-box" id="sample6_postcode" name="postcode" placeholder="우편번호" required="required" value="${userInfo.userAddr}">
	                        <div class="input-group-btn">
	                            <button class="btn btn-default" type="button" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
	                        </div>
	                    </div>
	                    <input type="hidden" id="userAddr" name="userAddr" value="${userInfo.userAddr}"> <!-- Hidden field to store combined address -->
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
                        <input type="submit" class="jinseok-button" value="수정하기" onclick="combineAddress()"></input>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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

        function combineAddress() {
            var postcode = document.querySelector('input[name="postcode"]').value;
            document.getElementById('userAddr').value = postcode;
        }

        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    if (data.userSelectedType === 'R') {
                        addr = data.roadAddress;
                    } else {
                        addr = data.jibunAddress;
                    }

                    if(data.userSelectedType === 'R'){
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                    }

                    var fullAddr = data.zonecode + ' ' + addr + ' ' + extraAddr;
                    document.getElementById('sample6_postcode').value = fullAddr;
                    document.getElementById('userAddr').value = fullAddr; // combined address for submission
                }
            }).open();
        }
    </script>
<%@ include file="../include/footer.jsp" %>