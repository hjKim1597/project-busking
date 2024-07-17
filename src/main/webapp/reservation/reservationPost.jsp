<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
    <div class="resvPost-wrap">
        <div class="resvPost-title">예약 신청서 작성</div>
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
                                    <h3>개인정보처리방침</h3>
                                    
                                    <h4>1. 수집하는 개인정보 항목</h4>
                                    <p>우리는 다음과 같은 개인정보를 수집할 수 있습니다:</p>
                                    <ul>
                                        <li>이름</li>
                                        <li>이메일 주소</li>
                                        <li>전화번호</li>
                                        <li>주소</li>
                                        <li>주민등록번호 (필요한 경우, 예: 본인확인을 위한 경우)</li>
                                    </ul>
                                    
                                    <h4>2. 개인정보의 수집 및 이용목적</h4>
                                    <p>수집한 개인정보는 다음과 같은 목적으로 이용됩니다:</p>
                                    <ul>
                                        <li>서비스 제공 및 운영</li>
                                        <li>본인확인 및 회원관리</li>
                                        <li>문의사항에 대한 응답 및 공지사항 전달</li>
                                        <li>법령 및 서비스 이용약관 위반 방지, 인지</li>
                                    </ul>
                                    
                                    <h4>3. 개인정보의 보유 및 이용기간</h4>
                                    <p>수집한 개인정보는 수집 및 이용목적이 달성된 후에는 지체없이 파기됩니다.</p>
                                    
                                    <h4>4. 개인정보의 파기절차 및 방법</h4>
                                    <p>전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.</p>
                                    <p>인쇄된 개인정보는 분쇄기를 이용하여 파기합니다.</p>
                                    
                                    <h4>5. 개인정보의 제3자 제공</h4>
                                    <p>개인정보를 제3자에게 제공하지 않습니다. 다만, 다음의 경우에는 예외로 합니다:</p>
                                    <ul>
                                        <li>법령의 규정에 의거하거나, 수사 목적으로 법령에 의한 절차와 방법에 따라 정해진 절차를 통한 요청이 있는 경우</li>
                                    </ul>
                                    
                                    <h4>6. 개인정보의 안전성 확보 조치</h4>
                                    <p>개인정보보호를 위해 다음과 같은 조치를 취하고 있습니다:</p>
                                    <ul>
                                        <li>개인정보의 암호화</li>
                                        <li>개인정보에 대한 접근 제한</li>
                                        <li>보안 프로그램 설치 및 주기적인 갱신</li>
                                    </ul>
                                    
                                    <h4>7. 개인정보 보호책임자</h4>
                                    <p>개인정보 보호와 관련된 문의사항은 다음으로 연락 주시기 바랍니다:</p>
                                    <ul>
                                        <li>이름: [개인정보 보호책임자 이름]</li>
                                        <li>이메일: [이메일 주소]</li>
                                        <li>전화번호: [전화번호]</li>
                                    </ul>
                                    
                                    <h4>8. 개인정보 처리방침의 변경</h4>
                                    <p>개인정보 처리방침을 개정할 경우 웹사이트 공지사항을 통해 공지할 것입니다.</p>
                                    
                                    <p>이 개인정보 처리방침은 20XX년 XX월 XX일부터 시행됩니다.</p>
                                </div>
                                <input type="checkbox" required>동의 합니다.
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
                                    <li><input type="checkbox" required>확인했습니다.</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <form id="form1" class="resvPost-form">
                <h3>상세 내용 작성</h3>
                <div class="form-group resvPost-form-group">
                    <label for="res-name">공연 담당자</label>
                    <input type="text" class="form-control" id="res-name" name="res-name" value="홍길동" readonly>
                    <label for="res-content">공연 내용을 작성해 주세요.</label>
                    <input type="text" class="form-control" id="res-content" name="res-content" placeholder="상세하게 작성해 주세요." required>
                    <label for="res-content">공연 인원</label>
                    <input type="text" class="form-control" id="res-count" name="res-count" required>
                    <label for="res-amp">설치물</label>
                    <input type="text" class="form-control" id="res-amp" name="res-amp">
                    
                </div>
            </form>

        </div>
            
        <div class="resvPost-sticky">
            <div class="resvPost-right">
                <h3>예약 확인</h3>
                <div class="resvPost-right-img">
                    <img src="../resources/img/reservation/광나루_버스킹1_천호대교 남단1.jpg" alt="">
                </div>
                <div class="resvPost-right-content">
                    <h4>홍길동님</h4>
                    <ul>
                        <li>
                            <b>공연 장소</b>
                            <p>[광나루] 천호대교 남단 하부</p>
                        </li>
                        <li>
                            <b>공연 시간</b>
                            <p>10:00 ~ 13:00</p>
                        </li>
                    </ul>
                </div>
                <div class="resvPost-control">
                    <button class="resvPost-submit" id="submitAll">예약하기</button>
                    <button type="button" class="resvPost-cancle">취소하기</button>
                </div>
                
            </div>
        </div>
    </div>
<%@ include file="../include/footer.jsp" %>