package com.busking.admin.model;

import java.util.ArrayList;


import com.busking.util.paging.PageVO;

public interface AdminMapper {
	
	//예약 확정 목록 조회
	public ArrayList<AdminPageDTO> getList();


	
	/*
	 * // 글 개수 조회 public int getTotal();
	 */
}
