<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
    
    <div class="resForm-wrap">
        <div class="resForm-top">
            <h3>장소이름</h3>
            <div class="resForm-top-loca">
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
                    <div class="resForm-top-loca-img">
                        <img src="${pageContext.request.contextPath }/resources/images/reservation_images/광나루_버스킹1_천호대교 남단1.jpg" alt="사진"> 
                    </div>
                    <div class="resForm-top-loca-img-hover">
                        <div class="resForm-img-gradient-left"></div>
                        <strong>자세히 보기</strong>
                        <div class="resForm-img-gradient-right"></div>
                    </div>
                    </div>
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
        <div class="resForm-bottom">
            <div class="resForm-bottom-nav">
                <ul class="nav nav-tabs resForm-bottom-nav-list">
                    <li><a href="#">Menu 1</a></li>
                    <li><a href="#">Menu 2</a></li>
                    <li><a href="#">Menu 3</a></li>
                </ul>
            </div>
        </div>

    </div>

<%@ include file="../include/footer.jsp" %>