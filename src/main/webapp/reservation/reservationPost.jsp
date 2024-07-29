<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<%@ include file="../include/header.jsp" %>

<div class="resvPost-wrap">
    <div class="resvPost-title" style="margin-top:150px; margin-left:25px;">예약 신청서 작성</div>
    <div class="resvPost-left">        
        <h3>이용약관</h3>
        <div class="resvPost-accordion">
            <div class="panel-group resvPost-group" id="accordion">
                <div class="panel panel-default resvPost-panel">
                    <div class="panel-heading resvPost-panel-heading">
                        <h4 class="panel-title resvPost-panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">개인정보 처리 방침</a>
                        </h4>
                    </div>
                    <div id="collapse1" class="panel-collapse collapse resvPost-collapse">
                        <div class="panel-body">
                            <div class="resvPost-container">
                                <!-- 개인정보 처리 방침 내용 -->
                                 <p>제 1 조 (개인정보 수집 목적)</p>
                                <p>'모여락'은 다음의 목적을 위하여 개인정보를 처리합니다. 처리한 개인정보는 다음의 목적 이외의 용도로는 사용되지 않으며, 이용 목적이 변경될 시에는 사전 동의를 구할 예정입니다.</p>
                                <ul>
                                    <li>공공서비스 예약자 접수시 예약신청서에 입력하시는 정보는 예약 접수 처리와 예약정보 안내를 위한 목적으로 수집 및 이용되며, 또한 서비스 통계 및 만족도 조사 등의 정책 활용 등을 목적으로 개인정보를 이용하고 있습니다.</li>
                                    <li>또한 접속자 통계자료 등의 목적으로 개인정보를 이용하고 있습니다.</li>
                                </ul>
                                <p>제 2 조 (개인정보의 처리 및 보유 기간)</p>
                                <ul>
                                    <li>서울시는 법령에 따른 개인정보 보유․이용기간 또는 정보주체로부터 개인정보를 수집시에 동의받은 개인정보 보유․이용기간 내에서 개인정보를 처리․보유합니다.</li>
                                    <li>서울시에서 운영하는 홈페이지 및 관련 서비스의 개인정보의 처리 및 보유기간에 대해서는 ‘개인정보보호 종합포털’에서 열람할 수 있습니다.</li>
                                </ul>
                                <p>제 3 조 (개인정보의 제3자 제공)</p>
                                <p>'모여락'은 정보주체의 동의, 법률의 특별한 규정 등 개인정보 보호법 제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.</p>
                            </div>
                            <input type="checkbox" id="privacy-policy" required>동의 합니다.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default resvPost-panel">
                    <div class="panel-heading resvPost-panel-heading">
                        <h4 class="panel-title resvPost-panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">예약 안내</a>
                        </h4>
                    </div>
                    <div id="collapse2" class="panel-collapse collapse resvPost-collapse">
                        <div class="panel-body">
                            <!-- 예약 안내 내용 -->
                            <p>필수 준수 사항</p>                         
                                <ul>
                                    <li>1. 모든 서비스의 이용은 담당 관할 구역의 규정에 따릅니다. 각 관할의 규정 및 허가조건을 반드시 준수하여야 합니다.</li>
                                    <li>2. 각 관할 구역의 시설물과 부대시설을 이용함에 있어 담당자들과 협의 후 사용합니다.</li>
                                    <li>3. 본 사이트와 각 관리 기관의 규정을 위반할 시에는 시설이용 취소 및 시설이용 불허의 조치를 취할 수 있습니다.</li>
                                    <li>4. 예약 승인시 별도의 연락이 가지 않으며 예약 현황은 마이페이지의 예약 현황에서 확인하실 수 있습니다.</li>
                                </ul>
                            <ul>
                                <li><input type="checkbox" id="reservation-confirmation" required>확인했습니다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <form id="form1" class="resvPost-form" action="submitReservation.reservation" method="post">
            <h3>상세 내용 작성</h3>
            <div class="form-group resvPost-form-group">
                <label for="res-name">장소 신청자</label>
                <input type="text" class="form-control" id="res-name" name="res-name" value="${userName}" readonly>
                <label for="res-content">공연 내용을 작성해 주세요.</label>
                <input type="text" class="form-control" id="res-content" name="res-content" placeholder="상세하게 작성해 주세요." required>
                <label for="res-count">공연 인원</label>
                <input type="number" class="form-control" id="res-count" name="res-count" required>
                <label for="res-amp">설치물</label>
                <input type="text" class="form-control" id="res-amp" name="res-amp">
                <input type="hidden" name="locaId" value="${location.locaId}">
                <input type="hidden" name="resDate" value="${resDate}">
                <input type="hidden" name="resTime" value="${resTime}">
                
                <div class="resvPost-control">
                    <input type="submit" class="resvPost-submit" value="예약하기">
                    <button type="button" class="resvPost-cancle" onclick="window.history.back();">취소하기</button>
                </div>
            </div>
        </form>
    </div>
        
    <div class="resvPost-sticky">
        <div class="resvPost-right">
            <h3>예약 확인</h3>
            <div class="resvPost-right-img">
                <img src="${location.locaPicPath}" alt="${location.locaName}">
            </div>
            <div class="resvPost-right-content">
                <h4>${userName}님</h4>
                <ul>
                    <li>
                        <b>공연 장소</b>
                        <p>${location.locaName} (${location.locaPlace})</p>
                    </li>
                    <li>
                        <b>공연 날짜</b>
                        <p>${resDate}</p>
                    </li>
                    <li>
                        <b>공연 시간</b>
                        <p>${resTime} ~ ${endTime}</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<script src="../resources/js/reservation/reservationPost.js"></script>
<%@ include file="../include/footer.jsp" %>
