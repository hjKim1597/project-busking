%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

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
    </div></c:forEach>