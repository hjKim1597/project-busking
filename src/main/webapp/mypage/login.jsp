<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <script src="../js/jquery-3.7.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../resources/css/mypage/login.css">
    <link rel="stylesheet" href="../resources/css/headerfooter/default_main.css">
    <link rel="stylesheet" href="../resources/css/headerfooter/main.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

<body>
    
    <div class="jinseok-wrap">
        <div class="login-wrap">
            <div class="login-wrap-border">
                <p>로그인</p>
                <form>
                    <div class="input-group id">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                      <input id="email" type="email" class="form-control" name="email" placeholder="아이디를 입력하세요.">
                    </div>
                    <div class="input-group pw">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                      <input id="password" type="password" class="form-control" name="password" placeholder="비밀번호를 입력하세요.">
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox" value=""><p style="font-size: 12px; line-height: 20px;">로그인 상태 유지</p></label>
                    </div>
                    <input type="button" class="jinseok-button" value="로그인"></input>
                    <div class="sub-wrap" style="color: #a0a0a0;">
                        
                            <a href="">비밀번호 찾기</a> | 
                            <a href="">아이디 찾기</a> |
                            <a href="">회원가입</a>

                    </div>
                </form>
            </div>
            
            <p>sns 연동 로그인</p>
            <div class="social-login">
                <div class="icon-all">
                    <a href=""><img src="../resources/img/Naver.png" alt=""></a>
                    <a href=""><img src="../resources/img/Kakao.png" alt=""></a>
                    <a href=""class="google"><img src="../resources/img/web_neutral_sq_na@4x.png" alt="" ></a>

                </div>
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