<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <script src="../resources/js/jquery-3.7.1.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../resources/css/mypage/adminPage.css">
    <link rel="stylesheet" href="../resources/css/headerfooter/default_main.css">
    <link rel="stylesheet" href="../resources/css/headerfooter/main.css">

    <style>
        /* Add your custom CSS styles here */
    </style>
</head>
<body>
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
                            <tr class="accordion-toggle" data-toggle="collapse" data-target="#collapse1" aria-expanded="false" aria-controls="collapse1">
                                <td>1</td>
                                <td>홍길동</td>
                                <td>2024-07-20</td>
                                <td>서울 광장</td>
                                <td>승인됨</td>
                                <td>
                                    <button class="approve">승인</button>
                                    <button class="reject">거절</button>
                                    <button class="modify">수정하기</button>
                                </td>
                            </tr>
                            <tr id="collapse1" class="collapse">
                                <td colspan="6">
                                    <div class="panel-body">
                                        <form class="reservation-form">
                                            <div class="form-group">
                                                <label for="facility">시설물:</label>
                                                <input type="text" id="facility" name="facility" class="form-control" value="마이크 1개 2m..." required readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="busking-content">공연 내용:</label>
                                                <input type="text" id="facility" name="busking-content" class="form-control" value="나혼자기타수고" required readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="people-cnt">인원수:</label>
                                                <input type="text" id="people-cnt" name="busking-content" class="form-control" value="1명" required readonly>
                                            </div>

                                            <div class="form-group">
                                                <label for="phone">휴대폰번호:</label>
                                                <input type="tel" id="phone" name="phone" class="form-control" value="010-xxxx-xxxx" required readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="email">이메일:</label>
                                                <input type="email" id="email" name="email" class="form-control" value="dlwlstjr1010@mdkfla.cods" required readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="address">주소:</label>
                                                <input type="address" id="address" name="address" class="form-control" value="서울시 강남구 ㅇㅇㅇㅇ.ㅇㅇㅇㅇ." required readonly></input>
                                            </div>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                            <!-- 추가적인 예약 내역 행을 여기에 추가 -->
                            <tr class="accordion-toggle" data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse2">
                                <td>2</td>
                                <td>김철수</td>
                                <td>2024-07-21</td>
                                <td>부산 광장</td>
                                <td>대기 중</td>
                                <td>
                                    <button class="approve">승인</button>
                                    <button class="reject">거절</button>
                                    <button class="modify">수정하기</button>
                                </td>
                            </tr>
                            <tr id="collapse2" class="collapse">
                                <td colspan="6">
                                    <div class="panel-body">
                                        <form class="reservation-form">
                                            <div class="form-group">
                                                <label for="facility">시설물:</label>
                                                <input type="text" id="facility" name="facility" class="form-control" value="마이크 1개 2m..." required readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="busking-content">공연 내용:</label>
                                                <input type="text" id="facility" name="busking-content" class="form-control" value="나혼자기타수고" required readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="people-cnt">인원수:</label>
                                                <input type="text" id="people-cnt" name="busking-content" class="form-control" value="1명" required readonly>
                                            </div>

                                            <div class="form-group">
                                                <label for="phone">휴대폰번호:</label>
                                                <input type="tel" id="phone" name="phone" class="form-control" value="010-xxxx-xxxx" required readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="email">이메일:</label>
                                                <input type="email" id="email" name="email" class="form-control" value="dlwlstjr1010@mdkfla.cods" required readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="address">주소:</label>
                                                <input type="address" id="address" name="address" class="form-control" value="서울시 강남구 ㅇㅇㅇㅇ.ㅇㅇㅇㅇ." required readonly></input>
                                            </div>
                                        </form>                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="pagination">
                        <button class="prev">이전</button>
                        <span>1 / 10</span>
                        <button class="next">다음</button>
                    </div>
                </div>
            </div>    
        </div>
    </div>

    <script>
        // JavaScript 코드
        $(document).ready(function() {
            // 클릭 이벤트 처리
            $('.accordion-toggle').click(function(event) {
                // 클릭된 요소가 버튼인 경우는 아코디언 효과를 발생시키지 않음
                if ($(event.target).is('button') || $(event.target).closest('button').length > 0) {
                    return;
                }
                
                // 클릭된 요소가 버튼이 아니면 아코디언 효과 토글
                $(this).next('.collapse').collapse('toggle');
            });

            // 승인 버튼 클릭 시 이벤트 처리
            $('.approve').click(function(event) {
                event.stopPropagation(); // 이벤트 버블링 방지
                // 여기에 승인 처리 관련 코드 추가
                console.log('승인 버튼 클릭');
            });

            // 거절 버튼 클릭 시 이벤트 처리
            $('.reject').click(function(event) {
                event.stopPropagation(); // 이벤트 버블링 방지
                // 여기에 거절 처리 관련 코드 추가
                console.log('거절 버튼 클릭');
            });
            $('.modify').click(function(event) {
            event.stopPropagation(); // 이벤트 버블링 방지
            $(this).closest('tr').next('.collapse').collapse('hide');
            });
            // 예약 상태에 따라 작업 버튼 변경
            $('tbody tr').each(function() {
                var status = $(this).find('td:nth-child(5)').text().trim();
                if (status === '승인됨') {
                    $(this).find('.approve').hide();
                    $(this).find('.reject').hide();
                    $(this).find('.modify').show();
                } else if (status === '대기 중') {
                    $(this).find('.approve').show();
                    $(this).find('.reject').show();
                    $(this).find('.modify').hide();
                }
            });
        });
    </script>
    
</body>
</html>