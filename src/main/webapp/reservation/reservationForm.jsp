<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
    
    <div class="resForm-wrap">
        <div class="resForm-top">
            <h3>장소이름</h3>
            <div class="resForm-top-loca">
                <div class="resForm-top-loca-right">
                    <div class="resForm-top-loca-img">
                        <img src="../resources/img/reservation/광나루_버스킹1_천호대교 남단1.jpg" alt="사진"> 
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
                               
            </div>
        </div>

        <div class="resForm-mid">
            <div class="resForm-mid-left">
                <div id="calendar">

                </div>
            </div>
            <div class="resForm-mid-right">
                <form action="#" method="post">
                    
                    <input type="submit" value="예약하기">
                    <input type="button" value="목록으로">
                </form>
            </div>
        </div>

        <div class="resForm-bottom">
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
                                
                                <h2>한강공원 버스킹(거리공연) 신청 개요</h2>
                                <h3>필수 준수사항</h3>
                                <p>
                                    모든 서비스의 이용은 담당 기관의 규정에 따릅니다. 각 시설의 규정 및 허가조건을 반드시 준수하여야 합니다.<br>
                                    각 관리기관의 시설물과 부대시설을 이용함에 있어 담당자들과 협의 후 사용합니다.<br>
                                    각 관리기관의 사고 발생시 서울시청에서는 어떠한 책임도 지지않습니다.<br>
                                    본 사이트와 각 관리기관의 규정을 위반할 시에는 시설이용 취소 및 시설이용 불허의 조치를 취할 수 있습니다.
                                </p>
                                <h3>신청 개요</h3>
                                <ul>
                                    <li>신청대상 : 문화예술 공연이 가능한 희망자</li>
                                    <li>
                                        공연인원 : 개인 또는 15인 이하 소규모 단체
                                        <p>※ 일부 한강공원은 현장상황에 맞게 공연인원 증감 가능</p>
                                    </li>
                                    <li>공연장르 : 음악·기악·전통·퍼포먼스 등 시민의 호응 유도가 가능한 장르</li>
                                    <li>공연장소 : 11개 한강공원별 버스킹 지정장소(총 22곳)</li>
                                    <li>
                                        공연시간 : 10:00~20:00 중 3시간 이내
                                        <p>※ 시설물(스피커 등) 설치시간 포함 3시간 이내</p>
                                    </li>
                                    <li>신청절차 : 장소사용신청 → 안내센터 승인 → 공연</li>
                                    <li>신청요금 : 무료(장소사용료 없음)</li>
                                </ul>
                                <h3>유의사항</h3>
                                <ul>
                                    <li>스피커(확성기, 앰프) 설치는 소음민원 발생으로 2개 이내만 가능합니다.</li>
                                    <li>
                                        스피커(확성기, 앰프) 사용시 생활소음·진동 규제기준을 반드시 준수해 주세요.
                                        <p>소음·진동관리법 제21조1항 및 동법시행규칙 제20조3항</p>
                                        <table>
                                            <tr>
                                                <td>공연 시간대</td>
                                                <td>주간 (10 : 00 ~ 18:00)</td>
                                                <td>야간 (18:00 ~ 20:00)</td>
                                            </tr>
                                            <tr>
                                                <td>규제기준치</td>
                                                <td>70dB 이하</td>
                                                <td>65dB 이하</td>
                                            </tr>
                                        </table>
                                    </li>
                                    <li>
                                        시설물 설치와 자전거·보행자 겸용 도로에의 차량 진입 승인신청은 공원안내센터와 협의 후 진행해 주세요.<br>
                                        (차량은 1.5t 소형 트럭 또는 화물 승합만 가능)
                                    </li>
                                    <li>침수 등으로 전기시설을 설치할 수 없는 하천으로, 전기공급은 하지 않습니다.</li>
                                    <li>노래방 기계는 설치할 수 없습니다.</li>
                                    <li>행사 과정에서 발생하는 쓰레기는 우리 본부에서 제작한 쓰레기 봉지(한강공원 매점 구매)에 담아 배출해야 합니다.</li>
                                    <li>행사 종료 후 청소상태 등이 미흡할 경우 추후 해당팀은 장소사용 승인이 불가할 수 있습니다.</li>
                                    <li>공연자(주최자)는 보행자 통행 및 거주민 일상에 불편이 없도록 노력해야 합니다.</li>
                                </ul>
                            </div>
                            <div class="tab-pane fade" id="menu2" role="tabpanel" aria-labelledby="map-tab">
                                <div id="mapContainer" style="width:100%;height:400px;"></div>
                            </div>
                            <div id="menu3" class="tab-pane bottom-menu3-content bottom-menu-content">
                                <h3>장소후기</h3>
                                <div class="form-group loca-cmt-box">
                                    <div class="cmt-top-box">
                                        <label for="comment" class="loca-cmt-left"><i class="glyphicon glyphicon-comment"></i> 버스킹 장소 이용 후기를 남겨주세요</label>
                                        <div class="cmt-star">
                                            <ul>
                                                <li class="star"><i class="glyphicon glyphicon-star"></i></li>
                                                <li class="star"><i class="glyphicon glyphicon-star"></i></li>
                                                <li class="star"><i class="glyphicon glyphicon-star"></i></li>
                                                <li class="star"><i class="glyphicon glyphicon-star"></i></li>
                                                <li class="star"><i class="glyphicon glyphicon-star"></i></li>
                                            </ul>
                                        </div>
                                        <textarea class="form-control cmt-text" rows="4" id="comment" placeholder="후기를 남겨주세요"></textarea>
                                    </div>
                                    
                                </div>
                                <div class="cmt-list-wrap">
                                    <div class="cmt-list-box">
                                        <div class="cmt-list-top">
                                            <div class="cmt-list-left">
                                                <div class="writer">ABC12341</div>
                                                <div class="date">24.7.15.17:22</div>
                                            </div>
                                            <div class="cmt-list-right">
                                                <i class="glyphicon glyphicon-star"></i>
                                                <p>4.5</p>
                                            </div>
                                        </div>
                                        <div class="cmt-list-content">
                                            <p>
                                                후기 내용<br>
                                                후기후기후기후기

                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4e128e18b3b784844e96c9c2db2a8e6a"></script>

<%@ include file="../include/footer.jsp" %>