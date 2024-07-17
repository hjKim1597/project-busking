<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../include/header.jsp" %>
<body>
    
    <div class="jinseok-wrap">
        <div class="login-wrap">
            <div class="login-wrap-border">
                <p>로그인</p>
                <form>
                    <div class="input-group id">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                      <input id="email" type="email" class="form-control" name="email" placeholder="아이디를 입력하세요.">
                    </div>
                    <div class="input-group pw">
                      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                      <input id="password" type="password" class="form-control" name="password" placeholder="비밀번호를 입력하세요.">
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox" value=""><p style="font-size: 12px; line-height: 20px;">로그인 상태 유지</p></label>
                    </div>
                    <input type="button" class="jinseok-button" value="로그인"></input>
                    <div class="sub-wrap" style="color: #a0a0a0;">
                        
                            <a href="">비밀번호 찾기</a> | 
                            <a href="">아이디 찾기</a> |
                            <a href="">회원가입</a>

                    </div>
                </form>
            </div>
            
            <p>sns 연동 로그인</p>
            <div class="social-login">
                <div class="icon-all">
                    <a href=""><img src="../resources/img/Naver.png" alt=""></a>
                    <a href=""><img src="../resources/img/Kakao.png" alt=""></a>
                    <a href=""class="google"><img src="../resources/img/web_neutral_sq_na@4x.png" alt="" ></a>

                </div>
            </div>

        </div>
    </div>
    
<%@ include file="../include/footer.jsp" %>