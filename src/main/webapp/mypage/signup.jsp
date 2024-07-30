<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../include/header.jsp" %>
<style>
    .hideMessage {
        display: none;    
    }
    .message-good {
        color: green;
    }
    .message-bad {
        color: red;
    }
</style>
<body>
    <div class="jinseok-wrap">
        <div class="sum">
            <h3 class="title">회원가입</h3>
            <div class="user-join">
                <form id="form_userInfo" action="${pageContext.request.contextPath}/userjoin/signup.mypage" method="post" onsubmit="combineAddress()">
                <div class="form-group pw-margin" style="margin-bottom: 15px">
                    <label for="userId">아이디</label>
                    <div class="input-group id-content">
	                    <input type="text" class="form-control write-box" id="userId" placeholder="6~20자 영문, 숫자" name="userId" required="required">
	                    <div class="input-group-btn">
	                        <button type="button" class="btn btn-default" onclick="checkUserId()">중복확인</button>
	                    </div>
                    </div>
	                <div class="success-message hideMessage message-good">사용할 수 있는 아이디입니다</div>
	                <div class="failure-message hideMessage message-bad">아이디는 6~20글자이어야 합니다</div>
	                <div class="failure-message2 hideMessage message-bad">영어 또는 숫자만 가능합니다</div>
                </div>
	                
                    <div class="form-group">
                        <label for="userPw">비밀번호</label>
                        <input type="password" class="form-control write-box" id="userPw" name="userPw" placeholder="8~12자 영문, 숫자" required="required">
	                    <div class="password-success-message hideMessage message-good">사용할 수 있는 비밀번호입니다</div>
	                    <div class="password-failure-message hideMessage message-bad">비밀번호는 8~12글자이어야 합니다</div>
	                    <div class="password-failure-message2 hideMessage message-bad">영어와 숫자만 가능합니다</div>
                    </div>
                    <div class="form-group">
                        <label for="userName">이름</label>
                        <input type="text" class="form-control write-box" id="userName" name="userName" required="required">
                    </div>
                    <div class="form-group">
                        <label for="userPno">연락처</label>
						<input type="text" class="form-control write-box" id="userPno" name="userPno" placeholder="010 1234 5678" required="required" maxlength="11">                    </div>
                    
                    <label for="userAddr">주소</label> <br>
                    <!-- 우편찾기 주소 -->
                    <div class="input-group id-content">
                        <input type="text" class="form-control write-box" id="sample6_postcode" name="addr1" placeholder="우편번호" required="required">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="button" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
                        </div>
                    </div>
                    <input type="text" id="sample6_address" class="form-control write-box" name="addr2" placeholder="주소" style="margin-top: 5px;" required="required">
                    <input type="text" id="sample6_extraAddress" class="form-control write-box" name="addr3" placeholder="참고항목" style="margin-top: 5px;" required="required">
                    <input type="text" id="sample6_detailAddress" class="form-control write-box" name="addr4" placeholder="상세주소" style="margin-top: 5px; margin-bottom: 15px;" required="required">
                    <input type="hidden" id="userAddr" name="userAddr"> <!-- Hidden field to store combined address -->

                    <div class="form-group">
                        <label for="userEmail">이메일</label>
                        <input type="email" class="form-control write-box" id="userEmail" name="userEmail" required="required">
                    </div>
    
                    <div class="form-group">
                        <label for="userGender">성별</label>
                        <select class="form-control write-box" id="userGender" name="userGender">
                            <option>없음</option>
                            <option>남성</option>
                            <option>여성</option>
                        </select>
                    </div>
                    <input type="submit" class="jinseok-button" value="회원가입" onclick="validateForm()" id="submit-btn"></input>
                </form>
            </div>
        </div>
    </div>
    
    <script>
        var isUserIdChecked = false; // 중복 확인 여부를 저장하는 변수
        var isPasswordValid = false; // 비밀번호 유효성 검사를 저장하는 변수

        function combineAddress() {
            var addr1 = document.querySelector('input[name="addr1"]').value;
            var addr2 = document.querySelector('input[name="addr2"]').value;
            var addr3 = document.querySelector('input[name="addr3"]').value;
            var addr4 = document.querySelector('input[name="addr4"]').value;
            var fullAddr = addr1 + ' ' + addr2 + ' ' + addr3 + ' ' + addr4;
            document.getElementById('userAddr').value = fullAddr;
        }

        function checkUserId() {
            var userId = document.getElementById('userId').value;
            if (userId.length < 6 || userId.length > 20 || !/^[A-Za-z0-9]+$/.test(userId)) {
                alert('아이디는 6~20자 영문, 숫자만 가능합니다.');
                document.getElementById('userId').value = ''; // 아이디 칸을 지움
                isUserIdChecked = false; // 중복 확인 실패
                return;
            }

            fetch(`${pageContext.request.contextPath}/userjoin/checkUserId.mypage?userId=` + userId)
                .then(response => response.text())
                .then(result => {
                    if (result === "사용할 수 있는 아이디입니다.") {
                        alert(result);
                        isUserIdChecked = true; // 중복 확인 성공
                    } else {
                        alert(result);
                        document.getElementById('userId').value = ''; // 아이디 칸을 지움
                        document.getElementById("userId").focus();
                        isUserIdChecked = false; // 중복 확인 실패
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                });
        }

        function validateForm() {
            if (!isUserIdChecked) {
                alert('아이디 중복 확인을 해주세요.');
                return false;
            }
            if (!isPasswordValid) {
                alert('비밀번호는 8~12자 영문, 숫자만 가능합니다.');
                return false;
            }
            combineAddress();
            return true;
        }

        // 연락처 숫자만 입력하게끔
        document.getElementById('userPno').addEventListener('input', function(e) {
            this.value = this.value.replace(/[^0-9]/g, '');  // 숫자만 입력 가능
        });

        // 아이디 입력창 정보 가져오기
        var elInputUsername = document.querySelector('#userId'); // input#userId
        // 성공 메시지 정보 가져오기
        var elSuccessMessage = document.querySelector('.success-message'); // div.success-message.hideMessage
        // 실패 메시지 정보 가져오기 
        var elFailureMessage = document.querySelector('.failure-message'); // div.failure-message.hideMessage
        // 실패 메시지2 정보 가져오기 (영어 또는 숫자)
        var elFailureMessageTwo = document.querySelector('.failure-message2'); // div.failure-message2.hideMessage

        // 영어와 숫자만 있는지 확인하는 함수
        function onlyNumberAndEnglish(str) {
            return /^[A-Za-z0-9]+$/.test(str);
        }

        // 아이디 길이가 6~20자인지 확인하는 함수
        function idLength(str) {
            return str.length >= 6 && str.length <= 20;
        }

        // 아이디 입력 시 유효성 검사
        elInputUsername.onkeyup = function () {
            // 값을 입력한 경우
            if (elInputUsername.value.length !== 0) {
                // 영어 또는 숫자 외의 값을 입력했을 경우
                if (!onlyNumberAndEnglish(elInputUsername.value)) {
                    elSuccessMessage.classList.add('hideMessage');
                    elFailureMessage.classList.add('hideMessage');
                    elFailureMessageTwo.classList.remove('hideMessage'); // 영어 또는 숫자만 가능합니다
                }
                // 글자 수가 6~20글자가 아닐 경우
                else if (!idLength(elInputUsername.value)) {
                    elSuccessMessage.classList.add('hideMessage'); // 성공 메시지가 가려져야 함
                    elFailureMessage.classList.remove('hideMessage'); // 아이디는 6~20글자이어야 합니다
                    elFailureMessageTwo.classList.add('hideMessage'); // 실패 메시지2가 가려져야 함
                }
                // 조건을 모두 만족할 경우
                else {
                    elSuccessMessage.classList.remove('hideMessage'); // 사용할 수 있는 아이디입니다
                    elFailureMessage.classList.add('hideMessage'); // 실패 메시지가 가려져야 함
                    elFailureMessageTwo.classList.add('hideMessage'); // 실패 메시지2가 가려져야 함
                }
            }
            // 값을 입력하지 않은 경우 (지웠을 때)
            // 모든 메시지를 가린다.
            else {
                elSuccessMessage.classList.add('hideMessage');
                elFailureMessage.classList.add('hideMessage');
                elFailureMessageTwo.classList.add('hideMessage');
            }
        }

        // 비밀번호 입력 시 유효성 검사
        var elInputPassword = document.querySelector('#userPw'); // input#userPw
        var elPasswordSuccessMessage = document.querySelector('.password-success-message'); // div.password-success-message.hideMessage
        var elPasswordFailureMessage = document.querySelector('.password-failure-message'); // div.password-failure-message.hideMessage
        var elPasswordFailureMessageTwo = document.querySelector('.password-failure-message2'); // div.password-failure-message2.hideMessage

        function pwLength(str) {
            return str.length >= 8 && str.length <= 12;
        }

        elInputPassword.onkeyup = function () {
            // 값을 입력한 경우
            if (elInputPassword.value.length !== 0) {
                // 영어 또는 숫자 외의 값을 입력했을 경우
                if (!onlyNumberAndEnglish(elInputPassword.value)) {
                    elPasswordSuccessMessage.classList.add('hideMessage');
                    elPasswordFailureMessage.classList.add('hideMessage');
                    elPasswordFailureMessageTwo.classList.remove('hideMessage'); // 영어와 숫자만 가능합니다
                    isPasswordValid = false;
                }
                // 글자 수가 8~12글자가 아닐 경우
                else if (!pwLength(elInputPassword.value)) {
                    elPasswordSuccessMessage.classList.add('hideMessage'); // 성공 메시지가 가려져야 함
                    elPasswordFailureMessage.classList.remove('hideMessage'); // 비밀번호는 8~12글자이어야 합니다
                    elPasswordFailureMessageTwo.classList.add('hideMessage'); // 실패 메시지2가 가려져야 함
                    isPasswordValid = false;
                }
                // 조건을 모두 만족할 경우
                else {
                    elPasswordSuccessMessage.classList.remove('hideMessage'); // 사용할 수 있는 비밀번호입니다
                    elPasswordFailureMessage.classList.add('hideMessage'); // 실패 메시지가 가려져야 함
                    elPasswordFailureMessageTwo.classList.add('hideMessage'); // 실패 메시지2가 가려져야 함
                    isPasswordValid = true;
                }
            }
            // 값을 입력하지 않은 경우 (지웠을 때)
            // 모든 메시지를 가린다.
            else {
                elPasswordSuccessMessage.classList.add('hideMessage');
                elPasswordFailureMessage.classList.add('hideMessage');
                elPasswordFailureMessageTwo.classList.add('hideMessage');
                isPasswordValid = false;
            }
        }
    </script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
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
                        document.getElementById("sample6_extraAddress").value = extraAddr;
                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }

                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }
    </script>
<%@ include file="../include/footer.jsp" %>