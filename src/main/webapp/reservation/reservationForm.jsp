<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- 부트스트랩 css 링크 -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- css 링크 -->
    <link rel="stylesheet" href="../css/reservationForm.css">

    <!-- jQuery 링크 (js보다 먼저 링크) -->
    <script src="js/jquery.3.7.1.js"></script>

    <!-- 부트스트랩 js 링크 -->
     <script src="js/bootstrap.min.js"></script>

    <!-- 웹폰트 -->
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">

</head>
<body>

    <header>
        헤더
    </header>
    
    <div class="resForm-wrap">
        <div class="resForm-top">
            <h3>예약 페이지</h3>
            <div class="resForm-top-loca">
                <h3>장소이름</h3>
                <div class="resForm-top-loca-left">
                    
                    <div class="resForm-top-loca-info">
                        <ul>
                            <li>
                                <b>장소</b>
                                <p>주소표기</p>
                            </li>
                            <li>
                                <b>선별방법</b>
                                <p>선착순</p>
                            </li>
                            <li>
                                <b>모집정원</b>
                                 <p>1팀</p>
                            </li>
                            <li>
                                <b>관활구역</b>
                                <p>관할구역</p>
                            </li>
                            <li>
                                <b>문의전화</b>
                                <p>전화번호</p>
                            </li>
                            <li>
                                <b>이메일</b>
                                <p>이메일</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="resForm-top-loca-right">
                    <img src="../images/reservation_images/광나루_버스킹1_천호대교 남단1.jpg" alt="사진">
                    
                </div>                
            </div>
        </div>
        <div class="resForm-mid">
            <div class="resForm-mid-left">
                달력...
            </div>
            <div class="resForm-mid-right">
                <form action="#" method="post">
                    <input type="submit" value="예약하기">
                    <input type="button" value="목록으로">
                </form>
            </div>
        </div>
        <div class="bottom">
            <div class="nav">
                <ul>
                    <li><a href="#">이용안내</a></li>
                    <li><a href="#">장소안내</a></li>
                    <li><a href="#">이용후기</a></li>
                </ul>
            </div>
        </div>

    </div>

    <footer>
        풋터
    </footer>
    
</body>
</html>