<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../include/header.jsp" %>
<body>
    
    <div class="jinseok-wrap">
        <div class="sum">
            <h3 class="title">회원가입</h3>
            <div class="user-join">
                <form id="form_userInfo" action="/mypage/signup.mypage" method="post">
               	<label for="id">아이디</label>
               	<div class="input-group id-content">
                    <input type="text" class="form-control write-box" id="id-content" placeholder="6~20자 영문, 숫자" name="id" required="required" pattern="[0-9A-Za-z]{6,20}">
                    <div class="input-group-btn">
                    	<button class="btn btn-default" type="submit">중복확인</button>
                	</div>
             	</div>
                <div class="form-group">
                    <label for="pwd">비밀번호</label>
                    <input type="password" class="form-control write-box" name="pw" placeholder="8~12자 영문, 숫자" required="required" pattern="[0-9A-Za-z]{8,12}">
                </div>
                <div class="form-group">
                    <label for="name">이름</label>
                    <input type="text" class="form-control write-box" id="name" name="name" required="required">
                </div>
                <div class="form-group">
                    <label for="phone-num">연락처</label>
                    <input type="text" class="form-control write-box" id="phone-num" name="phone" placeholder="010 1234 5678" required="required">
                </div>
                
                <label for="address">주소</label> <br>
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

                
                <div class="form-group">
                    <label for="email">이메일</label>
                    <input type="email" class="form-control write-box" id="email" name="email" required="required">
                </div>

                <div class="form-group">
                    <label for="sel1">성별</label>
                    <select class="form-control write-box" id="sel1" name="gender">
                    <option>없음</option>
                    <option>남성</option>
                    <option>여성</option>
                    <option>변화</option>
                    </select>
                </div>
                <input type="submit" class="jinseok-button" value="회원가입" id="submit-btn"></input>
				</form>
            </div>
        </div>
    </div>
    
    
     <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
     <script>
         function sample6_execDaumPostcode() {
             new daum.Postcode({
                 oncomplete: function(data) {
                     // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                     // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                     // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                     var addr = ''; // 주소 변수
                     var extraAddr = ''; // 참고항목 변수

                     //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                     if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                         addr = data.roadAddress;
                     } else { // 사용자가 지번 주소를 선택했을 경우(J)
                         addr = data.jibunAddress;
                     }

                     // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                     if(data.userSelectedType === 'R'){
                         // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                         // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                         if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                             extraAddr += data.bname;
                         }
                         // 건물명이 있고, 공동주택일 경우 추가한다.
                         if(data.buildingName !== '' && data.apartment === 'Y'){
                             extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                         }
                         // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                         if(extraAddr !== ''){
                             extraAddr = ' (' + extraAddr + ')';
                         }
                         // 조합된 참고항목을 해당 필드에 넣는다.
                         document.getElementById("sample6_extraAddress").value = extraAddr;
                     
                     } else {
                         document.getElementById("sample6_extraAddress").value = '';
                     }

                     // 우편번호와 주소 정보를 해당 필드에 넣는다.
                     document.getElementById('sample6_postcode').value = data.zonecode;
                     document.getElementById("sample6_address").value = addr;
                     // 커서를 상세주소 필드로 이동한다.
                     document.getElementById("sample6_detailAddress").focus();
                 }
             }).open();
         }
         
         $("#submit-btn").on("click", function() {
        	 //var a = $("#form_userInfo").serializeArray();
        	 debugger;
        	 $("#form_userInfo").submit();
         })
     </script>
<%@ include file="../include/footer.jsp" %>