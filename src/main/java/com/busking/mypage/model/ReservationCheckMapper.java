package com.busking.mypage.model;

import java.util.List;

public interface ReservationCheckMapper {
    List<ReservationCheckDTO> getReservationInfo(String userId);
}
