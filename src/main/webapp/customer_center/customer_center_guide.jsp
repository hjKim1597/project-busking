<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

   
    <!-- 커스터마이징 한 css 디자인 추가 -->
    <link rel="stylesheet" href="../resources/css/customer_center_board_free_list.css">


</head>

<%@ include file="../include/header.jsp"%>

<body>

     <!-- 중앙 레이아웃 -->
    <section class="container customer-center-width" id="change" style="margin-top: 150px; padding: 150px 50px 0 50px;
    margin: 0 auto;
    overflow: hidden;">
     	<!-- 좌측메뉴 -->
        <div class="board_nav">
            <div id="board_nav_wrap">
	             <h1>고객센터</h1>
	             <ul class="menu">
	                 <li class="nth1"><strong><a href="customer_center_index.customer"><span>공지사항</span></a></strong>
	                 </li>
	                 <li class="nth2"><strong><a href="customer_center_res.customer"><span>이달의 예약</span></a></strong>
	                 </li>
	                 <li class="nth3"><strong><a href="customer_center_guide.customer"><span>이용안내</span></a></strong>
	                 </li>
	                 <li class="nth4"><strong><a href="customer_center_FAQ.customer"><span>FAQ</span></a></strong>
	                 </li>
	             </ul>
            </div>
        </div>
        <!-- 공지사항 게시판 -->
        <div class="board">
	        <!-- 공지사항 목록 -->
	        <div class="board_list">
	        	<div class="board_list_title">
				</div>
	            <!-- 이용안내 내용 -->
	            
	            <div class="service-board" style="margin-left: 140px;">
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


                </div>

            </div>
            <div class="board">

                
				
				
					
				
			</div>
		</div>
	</section>
    
<%@ include file="../include/footer.jsp"%>



            
            
</body>


</html>