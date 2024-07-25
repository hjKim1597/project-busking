// 달력 script
// 날짜 객체 생성
var date = new Date();
// 달력 연도
var calendarYear = date.getFullYear();
// 달력 월
var calendarMonth = date.getMonth() + 1;
// 달력 일
var calendarToday = date.getDate();

var monthLastDate = new Date(calendarYear, calendarMonth, 0);
// 달력 월의 마지막 일
var calendarMonthLastDate = monthLastDate.getDate();

var monthStartDay = new Date(calendarYear, date.getMonth(), 1);
// 달력 월의 시작 요일
var calendarMonthStartDay = monthStartDay.getDay();

// 주 카운트
var calendarWeekCount = Math.ceil((calendarMonthStartDay + calendarMonthLastDate) / 7);

var html = "";
html += "<table>";
html += "<caption>" + calendarMonth + "월</caption>";
html += "<thead>";
html += "<tr>";
html += "<th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th>";
html += "</tr>";
html += "</thead>";
html += "<tbody>";
// 위치
var calendarPos = 0;
// 날짜
var calendarDay = 0;
for (var i = 0; i < calendarWeekCount; i++) {
    html += "<tr>";
    for (var j = 0; j < 7; j++) {
        html += "<td>";
        if (calendarMonthStartDay <= calendarPos && calendarDay < calendarMonthLastDate) {
            calendarDay++;
            html += "<span>" + calendarDay + "</span>";
        }
        html += "</td>";
        calendarPos++;
    }
    html += "</tr>";
}
html += "</tbody>";
html += "</table>";
document.getElementById("calendar").innerHTML = html;

// 날짜 클릭 이벤트
document.getElementById("calendar").addEventListener('click', (e) => {
    if (e.target.tagName != "SPAN") return;
    if (e.target.innerHTML == "") return;

    var calendarTdList = document.querySelectorAll("#calendar table tbody td");

    calendarTdList.forEach(function(td) {
        if(td.firstElementChild == e.target) return;
        td.classList.remove('selected');
    });

    e.target.parentElement.classList.toggle("selected");

    // 클릭한 날짜 값
    var selectedDate = `${calendarYear}-${calendarMonth}-${e.target.innerHTML}`;
    document.getElementById("selectedDate").value = selectedDate;
});

// 시간 클릭 이벤트
function selectTime(startTime, endTime) {
    document.getElementById("startTime").value = startTime;
    document.getElementById("endTime").value = endTime;

    document.querySelectorAll('.resForm-mid-button button').forEach(button => {
        button.classList.remove('selected');
    });

    event.target.classList.add('selected');
}

// 지도 스크립트
// 지도를 담을 영역의 DOM 레퍼런스
var mapContainer = document.querySelector('.map-container #map');

// 지도를 생성할 때 필요한 기본 옵션
var mapOption = {
    center: new kakao.maps.LatLng(locaY, locaX), // 지도의 중심 좌표
    level: 3 // 지도의 확대 레벨
};

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption);

// 컨트롤이 추가되었는지 확인하기 위한 변수
var controlsAdded = false;

// 부트스트랩 탭 이벤트 리스너
$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
    if (e.target.id === 'map-tab') {
        // 지도가 포함된 탭이 활성화될 때, 지도를 리사이즈합니다.
        map.relayout();
        // 지도의 중심을 재설정합니다.
        map.setCenter(new kakao.maps.LatLng(locaY, locaX));

        // 컨트롤을 한 번만 추가하기 위해 변수로 확인
        if (!controlsAdded) {
            // 줌 컨트롤 생성 및 추가
            var zoomControl = new kakao.maps.ZoomControl();
            map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

            // 지도 유형 컨트롤 생성 및 추가
            var mapTypeControl = new kakao.maps.MapTypeControl();
            map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

            // 컨트롤 추가 완료
            controlsAdded = true;
        }
// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(locaY, locaX); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div style="padding:5px;">' + locaName + '<br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new kakao.maps.LatLng(locaY, locaX); //인포윈도우 표시 위치입니다

// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
    position : iwPosition, 
    content : iwContent 
});
  
// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 
    }
});

