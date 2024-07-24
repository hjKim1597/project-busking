package com.busking.mypage.model;

public interface UserJoinMapper {
    int signup(UserJoinDTO userJoinDTO);
    int checkUserId(String userId);
    UserJoinDTO login(UserJoinDTO userJoinDTO);
    UserJoinDTO userInfo(String userId);
    String findUserId(UserJoinDTO dto);
    String findUserPw(UserJoinDTO dto);
}