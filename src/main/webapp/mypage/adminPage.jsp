<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../include/header.jsp"%>

<div class="jinseok-wrap">
	<div class="sum">
		<h3>예약 관리 페이지</h3>
		<div class="admin-page">
			<div class="main-content">
				<h3 style="margin-top: 0px;">예약 내역</h3>
				<hr>
				<table>
					<thead>
						<tr>
							<th>예약 ID</th>
							<th>예약자 이름</th>
							<th>공연 날짜</th>
							<th>장소</th>
							<th>상태</th>
							<th>작업</th>
						</tr>
					</thead>
					<tbody>
						<!-- 예약내용시작 -->
						<c:forEach var="dto" items="${getList }">

							<tr class="accordion-toggle" data-toggle="collapse"
								data-target="#collapse" aria-expanded="false"
								aria-controls="collapse">
								<td>${dto.userId }</td>
								<!--예약id  -->

								<td>${dto.userName }</td>
								<!--예약자이름  -->

								<td><fmt:formatDate value="${dto.resDate }"
										pattern="yy.MM.dd" /></td>
								<!--공연 날짜 -->

								<td>${dto.locaName }</td>
								<!--공연장소  -->

								<td id="status${dto.userId}" class="btnStatus">
									<c:choose>
										<c:when test="${dto.resResult == 'T'}">
											승인됨
										</c:when>
										<c:when test="${dto.resResult == 'F'}">
											거절됨
										</c:when>
										<c:when test="${dto.resResult == 'W'}">
											대기중
										</c:when>
										<c:otherwise>
											에러
										</c:otherwise>
									</c:choose>
								</td>
								<!-- 상태 -->
								<td class="status-btn">

									<button class="approve" data-rno="${dto.resNum }" onclick="handleApprove(${dto.resNum})">승인</button>
									<button class="reject" data-rno="${dto.resNum }" onclick="handleReject(${dto.resNum})">거절</button> 
									

								</td>
							</tr>





							<tr id="collapse1" class="collapse">
								<td colspan="6">
									<div class="panel-body">
										<form class="reservation-form">
											<div class="form-group">
												<label for="facility">시설물:</label> <input type="text"
													id="facility" name="facility" class="form-control"
													value="${dto.resAmp}" required readonly>
											</div>
											<div class="form-group">
												<label for="busking-content">공연 내용:</label> <input
													type="text" id="facility" name="busking-content"
													class="form-control" value="${dto.resContent}" required
													readonly>
											</div>
											<div class="form-group">
												<label for="people-cnt">인원수:</label> <input type="text"
													id="people-cnt" name="busking-content" class="form-control"
													value="${dto.resCount }" required readonly>
											</div>

											<div class="form-group">
												<label for="phone">휴대폰번호:</label> <input type="tel"
													id="phone" name="phone" class="form-control"
													value="${dto.userPno }" required readonly>
											</div>
											<div class="form-group">
												<label for="email">이메일:</label> <input type="email"
													id="email" name="email" class="form-control"
													value="${dto.userEmail }" required readonly>
											</div>
											<div class="form-group">
												<label for="address">주소:</label> <input type="address"
													id="address" name="address" class="form-control"
													value="${dto.userAddr }" required readonly>
											</div>
											<div class="form-group">
												<label for="time">예약시간:</label> <input type="time"
													id="time" name="time" class="form-control"
													value="${dto.resTime }" required readonly>
											</div>
										</form>
									</div>
								</td>
							</tr>
						</c:forEach>


				
					</tbody>
				</table>
				
			</div>
		</div>
	</div>
</div>

<script>

	function sendPostRequest(url, data) {
	    return fetch(url, {
	        method: "POST",
	        headers: {
	            "Content-Type": "application/x-www-form-urlencoded"
	        },
	        body: new URLSearchParams(data)
	    })
	    .then(response => response.text());
	}
	function handleApprove(resNum) {
	    var $row = $('button[data-rno="' + resNum + '"]').closest('tr');
	    $row.find('.btnStatus').text('승인됨');
	    sendPostRequest('adminPageT.admin', { resNum: resNum })
	        .then(data => {
	            console.log(data);
	        })
	        .catch(error => console.error('Error:', error));
	}

	
	function handleReject(resNum) {
	    var $row = $('button[data-rno="' + resNum + '"]').closest('tr');
	    $row.find('.btnStatus').text('거절됨');
	    sendPostRequest('adminPageF.admin', { resNum: resNum })
	        .then(data => {
	            console.log(data);
	        })
	        .catch(error => console.error('Error:', error));
	}



$(document).ready(function() {
	$('.accordion-toggle').click(function(event) {
		if ($(event.target).is('button') || $(event.target).closest('button').length > 0) return;
		$(this).next('.collapse').collapse('toggle');
	});
	$('.modify').click(function(event) {
		event.stopPropagation(); 
		$(this).closest('tr').next('.collapse').collapse('hide');
	});

	$('tbody tr').each(function() {
		var status = $(this).find('td:nth-child(5)').text().trim();
		if (status === '승인됨') {
			$(this).find('.modify').show();
		} else if (status === '대기 중') {
			$(this).find('.approve').show();
			$(this).find('.reject').show();
			$(this).find('.modify').hide();
		}
	});
	
	
}); 





</script>

<%@ include file="../include/footer.jsp"%>