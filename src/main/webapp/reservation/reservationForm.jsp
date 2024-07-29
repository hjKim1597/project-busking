<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<%@ include file="../include/header.jsp" %>
<%@ page import="com.busking.reservation.model.ReservationLocationDTO" %>

<c:set var="locaX" value="${location.locaPointX}" />
<c:set var="locaY" value="${location.locaPointY}" />
<c:set var="locaName" value="${location.locaName}" />
<c:set var="locaPicPath" value="${location.locaPicPath}" />
<c:set var="locaPlace" value="${location.locaPlace}" />
<c:set var="locaInfo" value="${location.locaInfo}" />

<script>
var locaX = "${locaX}";
var locaY = "${locaY}";
var locaName = "${locaName}";
var locaPicPath = "${locaPicPath}";
var locaPlace = "${locaPlace}";
var locaInfo = "${locaInfo}";
</script>

<div class="resForm-wrap">
    <div class="resForm-top">
        <h3>${location.locaName}</h3>
        <div class="resForm-top-loca">
            <div class="resForm-top-loca-right">
                <div class="resForm-top-loca-img">
                    <img id="locationImage" src="${location.locaPicPath}" alt="${location.locaName}">
                </div>
                <div class="resForm-top-loca-img-hover">
                    <strong>자세히 보기</strong>
                </div>
            </div>
            <div class="resForm-top-loca-left">
                <div class="resForm-top-loca-info">
                    <ul>
                        <li>
                            <b>장소</b>
                            <p>${location.locaInfo}</p>
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
                            <b>관할구역</b>
                            <p>${location.locaPlace}</p>
                        </li>
                        <li>
                            <b>이메일</b>
                            <p>${location.managerEmail}</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="resForm-mid">
        <div class="resForm-mid-left">
            <!-- 달력 생성 -->
            <div id="calendar"></div>
        </div>
        <div class="resForm-mid-right">
            <div class="resForm-mid-button">
                <button type="button" onclick="selectTime('10:00', '13:00')" class="time-btn btn1">10:00 - 13:00</button>
                <button type="button" onclick="selectTime('13:00', '16:00')" class="time-btn btn2">13:00 - 16:00</button>
                <button type="button" onclick="selectTime('16:00', '19:00')" class="time-btn btn3">16:00 - 19:00</button>
                <button type="button" onclick="selectTime('19:00', '22:00')" class="time-btn btn4">19:00 - 22:00</button>
            </div>
            <div class="resForm-mid-controll">
                <form action="reservationPost.reservation" method="post" id="reservationForm" onsubmit="return validateForm()">
                    <input type="hidden" name="locaId" value="${location.locaId}">
                    <input type="hidden" name="locaName" value="${location.locaName}">
                    <input type="hidden" name="locaPicPath" value="${location.locaPicPath}">
                    <input type="hidden" name="locaPlace" value="${location.locaPlace}">
                    <input type="hidden" name="locaInfo" value="${location.locaInfo}">
                    <input type="hidden" name="selectedDate" id="selectedDate">
                    <input type="hidden" name="startTime" id="startTime">
                    <input type="hidden" name="endTime" id="endTime">
                    <input type="submit" value="예약하기">
                    <input type="button" value="목록으로" onclick="goBackToList()">
                </form>
            </div>
        </div>
    </div>

    <div class="resvForm-bottom">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 resvForm-bottom-box">
                    <!-- 다이나믹 탭 -->
                    <ul class="nav nav-tabs resvForm-tab">
                        <li class="active"><a data-toggle="tab" href="#menu1">예약안내</a></li>
                        <li><a data-toggle="tab" href="#menu2" id="map-tab">지도보기</a></li>
                        <li><a data-toggle="tab" href="#menu3">장소후기</a></li>
                    </ul>

                    <div class="tab-content bottom-menu">
                        <div id="menu1" class="tab-pane active bottom-menu1-content bottom-menu-content">
                            <h3>한강공원 버스킹(거리공연) 신청 개요</h3>
                            <div class="notice-container">
                                <h4><strong>필수 준수사항</strong></h4>
                                <p>
                                    모든 서비스의 이용은 담당 기관의 규정에 따릅니다. 각 시설의 규정 및 허가조건을 반드시 준수하여야 합니다.<br>
                                    각 관리기관의 시설물과 부대시설을 이용함에 있어 담당자들과 협의 후 사용합니다.<br>
                                    각 관리기관의 사고 발생시 서울시청에서는 어떠한 책임도 지지않습니다.<br>
                                    본 사이트와 각 관리기관의 규정을 위반할 시에는 시설이용 취소 및 시설이용 불허의 조치를 취할 수 있습니다.
                                </p>
                                <h4><strong>신청 개요</strong></h4>
                                <ul>
                                    <li>신청대상 : 문화예술 공연이 가능한 희망자</li>
                                    <li>
                                        공연인원 : 개인 또는 15인 이하 소규모 단체
                                        <p class="notice-pre">※ 일부 한강공원은 현장상황에 맞게 공연인원 증감 가능</p>
                                    </li>
                                    <li>공연장르 : 음악·기악·전통·퍼포먼스 등 시민의 호응 유도가 가능한 장르</li>
                                    <li>공연장소 : 11개 한강공원별 버스킹 지정장소(총 20곳)</li>
                                    <li>
                                        공연시간 : 10:00~22:00 중 3시간
                                        <p class="notice-pre">※ 시설물(스피커 등) 설치시간 포함 3시간 이내</p>
                                    </li>
                                    <li>신청절차 : 장소사용신청 → 안내센터 승인 → 공연</li>
                                    <li>신청요금 : 무료(장소사용료 없음)</li>
                                </ul>
                                <h4><strong>유의사항</strong></h4>
                                <ul>
                                    <li>스피커(확성기, 앰프) 설치는 소음민원 발생으로 2개 이내만 가능합니다.</li>
                                    <li>
                                        스피커(확성기, 앰프) 사용시 생활소음·진동 규제기준을 반드시 준수해 주세요.
                                        <p class="notice-pre">※ 소음·진동관리법 제21조1항 및 동법시행규칙 제20조3항</p>
                                        <div class="notice-table-box">
                                            <table class="notice-table">
                                                <tr>
                                                    <td>공연 시간대</td>
                                                    <td>주간 (10:00 ~ 18:00)</td>
                                                    <td>야간 (18:00 ~ 22:00)</td>
                                                </tr>
                                                <tr>
                                                    <td>규제기준치</td>
                                                    <td>70dB 이하</td>
                                                    <td>65dB 이하</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </li>
                                    <li>
                                        시설물 설치와 자전거·보행자 겸용 도로에의 차량 진입 승인신청은 공원안내센터와 협의 후 진행해 주세요.<br>
                                        <p class="notice-pre">※ 차량은 1.5t 소형 트럭 또는 화물 승합만 가능</p>
                                    </li>
                                    <li>침수 등으로 전기시설을 설치할 수 없는 하천으로, 전기공급은 하지 않습니다.</li>
                                    <li>노래방 기계는 설치할 수 없습니다.</li>
                                    <li>행사 과정에서 발생하는 쓰레기는 우리 본부에서 제작한 쓰레기 봉지(한강공원 매점 구매)에 담아 배출해야 합니다.</li>
                                    <li>행사 종료 후 청소상태 등이 미흡할 경우 추후 해당팀은 장소사용 승인이 불가할 수 있습니다.</li>
                                    <li>공연자(주최자)는 보행자 통행 및 거주민 일상에 불편이 없도록 노력해야 합니다.</li>
                                </ul>
                            </div>
                        </div>
                        <div id="menu2" class="tab-pane fade bottom-menu2-content bottom-menu-content" role="tabpanel" aria-labelledby="map-tab">
                            <h3>지도보기</h3>
                            <div class="map-container">
                                <div id="map" style="width: 100%; height: 400px;"></div>
                            </div>
                        </div>
                        <div id="menu3" class="tab-pane bottom-menu3-content bottom-menu-content">
                            <h3>장소후기</h3>
                            <div class="form-group loca-cmt-box">
                                <div class="cmt-top-box">
                                    <label for="comment" class="loca-cmt-left">
                                        <i class="glyphicon glyphicon-comment"></i> 버스킹 장소 이용 후기를 남겨주세요
                                    </label>
           							<div class="cmt-star">
                						<ul>
                    						<li class="star"><i class="glyphicon glyphicon-star"></i></li>
                    						<li class="star"><i class="glyphicon glyphicon-star"></i></li>
                    						<li class="star"><i class="glyphicon glyphicon-star"></i></li>
                    						<li class="star"><i class="glyphicon glyphicon-star"></i></li>
                    						<li class="star"><i class="glyphicon glyphicon-star"></i></li>
                						</ul>
                                    </div>
                                    <!-- form 수정 -->
									<form action="addReview.reservation" method="post" id="reviewForm" onsubmit="return confirmReviewSubmission()">
   									  <input type="hidden" id="locaId" name="locaId" value="${location.locaId}">
   									  <input type="hidden" id="userId" name="userId" value="${sessionScope.userId}">
  									  <input type="hidden" id="rating" name="rating" value="0">
  									  <textarea class="form-control cmt-text" rows="4" id="comment" name="comment" placeholder="후기를 남겨주세요"></textarea>
  									  <button type="submit" id="cmt-btn">등록</button>
									</form>
                                </div>
                            </div>
                            <div class="cmt-list-wrap">
                                <c:forEach var="review" items="${reviewList}">
                                    <div class="cmt-list-box">
                                        <div class="cmt-list-top">
                                            <div class="cmt-list-left">
                                                <div class="writer">${review.userId}</div>
                                                <div class="date">
                                                    <fmt:formatDate value="${review.locaCmtRegdate}" pattern="yyyy.MM.dd HH:mm" />
                                                </div>
                                            </div>
                                            <div class="cmt-list-right">
                                                <i class="glyphicon glyphicon-star"></i>
                                                <p>${review.locaScore}</p>
                                            </div>
                                        </div>
                                        <div class="cmt-list-content">
                                            <p>${review.locaContent}</p>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- 오버레이 요소 추가 -->
    <div id="photo-overlay" style="display: none;">
        <span class="close-btn">&times;</span>
        <img src="" alt="Enlarged Photo">
    </div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4e128e18b3b784844e96c9c2db2a8e6a"></script>
<script src="../resources/js/reservation/reservationForm.js"></script>
<script>
	var overlay = document.getElementById('photo-overlay');
	var overlayImage = overlay.querySelector('img');
	var closeBtn = overlay.querySelector('.close-btn');
	var locationImage = document.getElementById('locationImage');
	
	// 이미지 클릭 이벤트 리스너 추가
	locationImage.onclick = function() {
	    overlayImage.src = this.src;
	    overlay.style.display = 'flex';
	};
	
	// 닫기 버튼 클릭 이벤트 리스너 추가
	closeBtn.onclick = function() {
	    overlay.style.display = 'none';
	};
	
	// 오버레이 외부 클릭 시 오버레이를 닫는 이벤트 리스너 추가
	overlay.onclick = function(e) {
	    if (e.target === overlay) {
	        overlay.style.display = 'none';
	    }
	};
</script>
<%@ include file="../include/footer.jsp" %>
