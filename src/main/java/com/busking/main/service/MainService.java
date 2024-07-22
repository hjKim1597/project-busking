/*
   주로 인터페이스 형태로 존재하며, 애플리케이션에서 무엇을 해야 하는지 정의함
  1. 웹 애플리케이션에서 필요한 기능이나 작업을 정의함(게시판에서 최신 게시물 목록을 가져오기)
  2. 제공할 기능을 메서드 형태로 선언 아래의 목록조회같은 기능
  3. 실제로 이 기능을 어떻게 수행할지, 즉 비즈니스 로직을 어떻게 처리할지 정의하는 것은 MainServiceImpl 라는 구현 클래스에서 이루어짐
 */

package com.busking.main.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface MainService {
	//목록 조회
	void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
