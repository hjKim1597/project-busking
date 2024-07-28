package com.busking.admin.model;

import java.util.ArrayList;
import java.util.Map;

//import com.busking.util.paging.PageVO;

public interface AdminMapper {
	
	//예약 확정 목록 조회
	public ArrayList<AdminPageDTO> getList(Map<String, Object> params);

	 // 예약 상태 업데이트
	 public int updateResult(Map<String, Object> params);
	 
	/*
	 * // 글 개수 조회 public int getTotal();
	 */
}
