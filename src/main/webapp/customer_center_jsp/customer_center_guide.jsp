<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/css/customer_center_css/customer_center_index.css">

    <!-- 부트스트랩 css링크 -->
    <link rel="stylesheet" href="../resources/css/customer_center_css/bootstrap.min.css">
    <!-- 제이쿼리(부스트랩보다 먼저 링크) -->
    <script src="../resources/js/customer_center_js/jquery-3.7.1.min.js"></script>
    <!-- 부트스트랩 js링크 -->
    <script src="../resources/js/customer_center_js/bootstrap.min.js"></script>

    <!-- 커스터마이징 한 css 디자인 추가 -->
    <link rel="stylesheet" href="../resources/css/customer_center_css/customer_center_custom-reset.css">
    <link rel="stylesheet" href="../resources/css/customer_center_css/index03.css">
    <link rel="stylesheet" href="../resources/css/customer_center_css/customer_center_default.css">

    <!-- header,footer -->
    <link rel="stylesheet" href="../resources/css/customer_center_css/customer_center_header_footer.css">

</head>

<body>

    <!-- header -->
    <header>
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
    </header>

    <!-- 레이아웃 -->
    <section class="container customer-center-width" id="change">
        <div class="row">

            <!-- 좌측메뉴 -->
            <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 content">
                <li class="col-xs-4 col-sm-4 col-lg-4 col-lg-4">
                    <section>
                        <div class="service_menu">
                            <nav>
                                <div class="span"></div>
                                <h1>고객센터</h1>
                                <ul class="menu">
                                    <li class="nth1"><strong><a href="customer_center_index.jsp">공지사항</a></strong>
                                    </li>
                                    <li class="nth2"><strong><a href="customer_center_month.jsp">이달의예약</a></strong>
                                    </li>
                                    <li class="nth3"><strong><a href="customer_center_guide.jsp">이용안내</a></strong>
                                    </li>
                                    <li class="nth4"><strong><a href="customer_center_FAQ.jsp"><span>자주묻는질문(FAQ)</span></a></strong>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </section>
                </li>
            </div>

            <!-- 이용안내 내용 -->
            <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 board">

                <div class="service-board">
                    <div class="container">
                        <div class="page-header">
                            <h3>한강공원 버스킹(거리공연) 신청 개요</h3>
                        </div>
                        <p>신청대상 : 문화예술 공연이 가능한 희망자</p>
                        <p>
                            공연인원 : 개인 또는 15인 이하 소규모 단체
                        </p>
                        <p>
                            ※ 일부 한강공원은 현장상황에 맞게 공연인원 증감 가능
                        </p>
                        <p>
                            공연장르 : 음악·기악·전통·퍼포먼스 등 시민의 호응 유도가 가능한 장르
                        </p>
                        <p>
                            공연장소 : 11개 한강공원별 버스킹 지정장소
                        </p>
                        <p>
                            지정장소는 [버스킹 장소현황] 또는 [한강시설-문화시설-공연시설-버스킹(거리공연장)] 참고
                        </p>
                        <p>
                            지정장소 이외의 신규장소는 안내센터와 사전 협의 필요
                        </p>
                        <p>
                            공연시간 : 10:00~20:00 중 3시간 이내
                        </p>


                        <p> ※ 시설물(스피커 등) 설치시간 포함 3시간 이내
                        </p>
                        <p> 신청절차 : 장소사용신청 → 안내센터 승인 → 공연
                        </p>
                        <p> 신청요금 : 무료(장소사용료 없음)</p>
                        </p>
                    </div>
                    <div class="container">
                        <div class="page-header">
                            <h3>유의사항</h3>
                        </div>
                        <p> 스피커(확성기, 앰프) 설치는 소음민원 발생으로 2개 이내만 가능합니다.
                        </p>
                        <p> 스피커(확성기, 앰프) 사용시 생활소음·진동 규제기준을 반드시 준수해 주세요.
                        </p>
                        <p> 소음·진동관리법 제21조1항 및 동법시행규칙 제20조3항
                        </p>
                        <p> 세부프로그램 - 공원, 구분, 프로그램명 순서
                        </p>
                        <p>공연 시간대 주간 (10 : 00 ~ 18:00) 야간 (18:00 ~ 20:00)</p>
                        <p>규제기준치 70dB 이하 65dB 이하</p>
                        <p>시설물 설치와 자전거·보행자 겸용 도로에의 차량 진입 승인신청은 공원안내센터와 협의 후 진행해 주세요.</p>
                        <p>(차량은 1.5t 소형 트럭 또는 화물 승합만 가능)</p>
                        <p>침수 등으로 전기시설을 설치할 수 없는 하천으로, 전기공급은 하지 않습니다.</p>
                        <p>노래방 기계는 설치할 수 없습니다.</p>
                        <p>행사 과정에서 발생하는 쓰레기는 우리 본부에서 제작한 쓰레기 봉지(한강공원 매점 구매)에 담아 배출해야 합니다.</p>
                        <p>행사 종료 후 청소상태 등이 미흡할 경우 추후 해당팀은 장소사용 승인이 불가할 수 있습니다.</p>
                        <p>공연자(주최자)는 보행자 통행 및 거주민 일상에 불편이 없도록 노력해야 합니다.</p>
                        <p>버스킹 신청 및 문의는 해당 한강공원 안내센터로 해주시기 바랍니다.</p>
                        <p>광나루안내센터 ☎ 02-3780-0501~4</p>
                        <p>잠실안내센터 ☎ 02-3780-0511~4</p>
                        <p>뚝섬안내센터 ☎ 02-3780-0521~4</p>
                        <p>잠원안내센터 ☎ 02-3780-0531~3</p>
                        <p>반포안내센터 ☎ 02-3780-0541~4</p>
                        <p>이촌안내센터 ☎ 02-3780-0551~4</p>
                        <p>여의도안내센터 ☎ 02-3780-0561~6</p>
                        <p>양화안내센터 ☎ 02-3780-0581~3</p>
                        <p>망원안내센터 ☎ 02-3780-0601~4</p>
                        <p>난지안내센터 ☎ 02-3780-0611~3</p>
                        <p>강서안내센터 ☎ 02-3780-0621~3</p>
                        <p>버스킹 신청·문의처 안내 바로가기</p>
                        </p>
                    </div>

                    <div class="container">
                        <div class="page-header">
                            <h3>안내3</h3>
                        </div>
                        <p>내용</p>
                    </div>

                </div>

                <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 extra">
                    <!-- 빈칸1 -->
                </div>

                <div class="col-xs-12 col-sm-12 col-lg-12 col-lg-12 extra">
                    <!-- 빈칸2 -->
                </div>

            </div>
        </div>
    </section>

    <!-- footer -->
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