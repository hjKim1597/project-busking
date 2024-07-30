package com.busking.admin.model;

import java.util.ArrayList;
import java.util.Map;

//import com.busking.util.paging.PageVO;

public interface AdminMapper {

	// 예약 확정 목록 조회
	public ArrayList<AdminPageDTO> getList(Map<String, Object> params);

	// 예약 승인상태 업데이트
	public int updateResultT(String resNum);

	// 예약 거절상태 업데이트
	public int updateResultF(String resNum);

	// 예약 대기상태 업데이트
	public int updateResultN(String resNum);
	
	// 예약 상태 조회
	public String getStatus(String resNum);

	
}
