<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../resources/css/mypage/signup.css">
    <link rel="stylesheet" href="../resources/css/headerfooter/default_main.css">
    <link rel="stylesheet" href="../resources/css/headerfooter/main.css">
    
<body>
    <header class="index-header">
        <div class="header-wrap">
            <div class="index-top">
    
                <div class="top-img">
                    <img src="img/project_logo.png" style="max-width: 100%; height: auto;" alt="로고사진">
                </div>
    
                <div class="top-left">
                    사이트명
                </div>
    
                <div class="index-menu">
                    <ul>
                        <li><a href="#">Main</a></li>
                        <li><a href="#">자유게시판</a></li>
                        <li><a href="#">예약하기</a></li>
                        <li><a href="#">마이페이지</a></li>
                        <li><a href="#">고객센터</a></li>

                    </ul>
                </div>
    
                <div class="index-top-right">
                    <ul>
                        <li><a href="#">로그인</a></li>
                        <li><a href="#">회원가입</a></li>
    
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <div class="jinseok-wrap">
        <div class="sum">
            <h3 class="title">회원가입</h3>
            <div class="user-join">
                <form>
                    <label for="id">아이디</label>
                    <div class="input-group id-content">
                        <input type="text" class="form-control write-box" id="id-content" placeholder="6~20자 영문, 숫자">
                        <div class="input-group-btn">
                          <button class="btn btn-default" type="submit">중복확인</button>
                        </div>
                    </div>
                </form>
                <div class="form-group">
                    <label for="pwd">비밀번호</label>
                    <input type="password" class="form-control write-box" placeholder="8~12자 영문, 숫자">
                </div>
                <div class="form-group">
                    <label for="name">이름</label>
                    <input type="text" class="form-control write-box" id="name" value="">
                </div>
                <div class="form-group">
                    <label for="phone-num">연락처</label>
                    <input type="text" class="form-control write-box" id="phone-num" value="" placeholder="010 1234 5678">
                </div>
                
                <label for="address">주소</label> <br>
                                    <!-- 우편찾기 주소 -->
                <div class="input-group id-content">
                    <input type="text" class="form-control write-box" id="sample6_postcode" placeholder="우편번호">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="button" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
                    </div>
                </div>
                <input type="text" id="sample6_address" class="form-control write-box" placeholder="주소" style="margin-top: 5px;">
                <input type="text" id="sample6_extraAddress" class="form-control write-box" placeholder="참고항목" style="margin-top: 5px;">
                <input type="text" id="sample6_detailAddress" class="form-control write-box" placeholder="상세주소" style="margin-top: 5px; margin-bottom: 15px;">

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
                </script>
                
                <div class="form-group">
                    <label for="email">이메일</label>
                    <input type="email" class="form-control write-box" id="email" value="">
                </div>
                <div class="form-group form-sum">
                    <label for="birth-id">주민등록번호</label>
                    <input type="text" class="form-control write-box" id="birth-id" value=""> - 
                    <input type="password" class="form-control write-box" id="birth-id" value="">
                </div>
                <div class="form-group">
                    <label for="sel1">성별</label>
                    <select class="form-control write-box" id="sel1">
                    <option>없음</option>
                    <option>남성</option>
                    <option>여성</option>
                    <option>변화</option>
                    </select>
                </div>
                <input type="button" class="jinseok-button" value="회원가입"></input>

            </div>
        </div>
    </div>
    
    <footer class="index-footer">
        <div class="index-footer-top">
            <div class="footer-service">
                <h4>서비스</h4>
                <ul>
                    <li><a href="#">개발자용 프로그래머스</a></li>
                    <li><a href="#">기업용 프로그래머스</a></li>
                </ul>
            </div>
  
            <div class="footer-faq">
                <h4>문의</h4>
                <ul>
                    <li><a href="#">FAQ/문의</a></li>
                    <li><a href="#">교육 결제, 환불 관련 문의</a></li>
                </ul>
            </div>
  
            <div class="footer-cscenter">
                <h4>고객센터</h4>
                <p>대표번호:1533-1886</p>
                <p>운영시간: 오전 9시 ~ 오후 6시 (주말 및 공휴일 휴무)</p>
                <p>점심시간: 오후 12시 ~ 오후 1시</p>
            </div>
  
            <div class="footer-familysite">
                <select>
                    <option value="">패밀리사이트</option>
                </select>
            </div>
        </div>
        <div class="footer-mid">
            <div>
                <p>2024 (사이트명)</p>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="footer-info">
                <p>(회사명) / (팀명) / (주소) / (팀원명)</p>
                <p>(사이트명) 사이트의 모든 콘텐츠, 정보, UI, HTML 소스 등에 대한 무단 복제, 전송, 배포, 크롤링, 스크래핑 등의 행위를 거부하며, 이러한 행위는 관련 법령에 의해
                    엄격히 금지됩니다.</p>
                <p><a href="https://icons8.kr/icons" class="footer-icon">Designed by Agency. Icons by Icons8</a> |
                    <a href="#" style="color: #999; text-decoration: none;">개인정보 처리방침</a> | <a href="#"
                        style="color: #999; text-decoration: none;">이용약관</a> | (사이트명)
                </p>
  
  
            </div>
        </div>
    </footer>
</body>
</html>