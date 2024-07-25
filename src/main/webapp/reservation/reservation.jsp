<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ include file="../include/header.jsp" %>

<div class="res-wrap">
    <div class="res-search">
        <form action="#" method="post">
            <fieldset>
                <legend class="hide">검색영역</legend>
                <select name="locations" id="locations" class="select-loca">
                    <option value="*">전체</option>
                    <option value="광나루">광나루</option>
                    <option value="잠실">잠실</option>
                    <option value="뚝섬">뚝섬</option>
                    <option value="잠원">잠원</option>
                    <option value="이촌">이촌</option>
                    <option value="반포">반포</option>
                    <option value="망원">망원</option>
                    <option value="여의도">여의도</option>
                    <option value="난지">난지</option>
                    <option value="양화">양화</option>
                    <option value="강서">강서</option>
                </select>
                <input type="text" class="search-text" name="search_text" placeholder="검색어를 입력하세요">
                <input type="submit" class="search-btn" value="검색">
            </fieldset>
        </form>
    </div>

    <div class="res-loca">
        <c:forEach var="location" items="${locations}">
            <div class="loca-box">
                <a href="reservationForm.reservation?locaId=${location.locaId}">
                    <div class="loca-img-box">
                        <img src="${location.locaPicPath}" alt="${location.locaName}">
                    </div>
                    <div class="loca-cont-box">
                        <h4>${location.locaName}</h4>
                        <ul>
                            <li>
                                <b>관할지</b>
                                <div>${location.locaPlace}</div>
                            </li>
                            <li>
                                <b>주소</b>
                                <div>${location.locaInfo}</div>
                            </li>
                            <li>
                                <b>연락망</b>
                                <div>관리자 이메일</div>
                            </li>
                        </ul>
                    </div>
                </a>    
            </div>
        </c:forEach>
    </div>
</div>        
           
<%@ include file="../include/footer.jsp" %>