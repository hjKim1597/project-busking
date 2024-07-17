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
    <link rel="stylesheet" href="../resources/css/mypage/userInfo.css">


</head>
<body>
  
  
    <div class="jinseok-wrap">
      <div class="sum">
          <div class="nav">
            <ul>
                    <li><a href="userInfo.jsp" class="tap">내 정보</a></li>
                    <li><a href="reservationCheck.jsp">예약 현황</a></li>
                    <li><a href="deleteUser.jsp">회원 탈퇴</a></li>
                </ul>
            </div>
            
            <div class="user-info">
                <p>내 정보</p>
                <div class="info-content">
                    <div class="form-group">
                        <label for="usr">아이디 (변경불가)</label>
                        <input readonly type="text" class="form-control" id="usr" value="dkajsdlfk2203">
                      </div>
                      <form class="pw-margin">
                        <label for="pwd">비밀번호</label>
                        <div class="input-group">
                          <input type="password" class="form-control">
                          <div class="input-group-btn">
                            <button class="btn btn-default" type="submit">
                              비밀번호 변경
                            </button>
                          </div>
                        </div>
                      </form>
                      <div class="form-group">
                        <label for="usr">이름</label>
                        <input type="text" class="form-control" id="usr" value="이진석">
                      </div>
                      <div class="form-group">
                        <label for="pwd">연락처</label>
                        <input type="text" class="form-control" id="pwd" value="010-6230-3855">
                      </div>
                      <div class="form-group">
                        <label for="email">이메일</label>
                        <input type="email" class="form-control" id="email" value="asldf@dkads.com">
                      </div>
                      <div class="form-group">
                        <label for="pwd">생년월일 (변경불가)</label>
                        <input readonly type="text" class="form-control" id="email" value="1997년 4월 22일">
                      </div>
                      <div class="form-group">
                        <label for="sel1">성별</label>
                        <select class="form-control" id="sel1">
                          <option>없음</option>
                          <option>남성</option>
                          <option>여성</option>
                          <option>변화</option>
                        </select>
                      </div>
                      <input type="button" class="jinseok-button" value="수정하기"></input>
                </div>
            </div>
      </div>
          
    </div>
    
</body>
</html>