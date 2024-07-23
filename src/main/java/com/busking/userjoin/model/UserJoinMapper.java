package com.busking.userjoin.model;

public interface UserJoinMapper {
    int signup(UserJoinDTO userJoinDTO);
    int checkUserId(String userId);
    UserJoinDTO login(UserJoinDTO userJoinDTO);

}