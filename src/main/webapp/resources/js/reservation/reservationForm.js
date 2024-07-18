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
        html += "<td \">";
        if (calendarMonthStartDay <= calendarPos && calendarDay < calendarMonthLastDate) {
            calendarDay++;
            html += "<span \">" + calendarDay + "</span>";
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
	if(e.target.tagName != "SPAN") return;
	if(e.target.innerHTML == "") return;
	
	var calendarTdList = document.querySelectorAll("#calendar table tbody td");
	
	calendarTdList.forEach(function(td) {
		if(td.firstElementChild == e.target) return;
		td.classList.remove('selected');
	});
	
	e.target.parentElement.classList.toggle("selected");
	
	
});

// 지도 스크립트
// 지도를 담을 영역의 DOM 레퍼런스
var mapContainer = document.querySelector('.map-container #map');

// 지도를 생성할 때 필요한 기본 옵션
var mapOption = {
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심 좌표
    level: 3 // 지도의 확대 레벨
};

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption);

// 부트스트랩 탭 이벤트 리스너
$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
    if (e.target.id === 'map-tab') {
        // 지도가 포함된 탭이 활성화될 때, 지도를 리사이즈합니다.
        map.relayout();
        // 지도의 중심을 재설정합니다.
        map.setCenter(new kakao.maps.LatLng(33.450701, 126.570667));
    }
});
