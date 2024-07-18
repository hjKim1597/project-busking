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

var calendarTdList = document.querySelectorAll("#calendar table tbody td");
calendarTdList.forEach(function(td) {
    td.addEventListener('click', function() {
        calendarTdList.forEach(function(td) {
            td.classList.remove('selected');
        });
        this.classList.add('selected');
    });
});
// 지도 script
var mapContainer = document.getElementById('mapContainer'), // 지도를 표시할 div
mapOption = { 
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
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

// 장소 후기 별점 스크립트
document.addEventListener('DOMContentLoaded', function () {
    const stars = document.querySelectorAll('.cmt-star .star');
    let currentRating = 0; // 현재 선택된 별점

    function handleStarSelection(index) {
        // 현재 선택된 별점 업데이트
        currentRating = index + 1;

        // 모든 별의 선택 상태를 초기화
        stars.forEach((s, i) => {
            if (i <= index) {
                s.classList.add('selected');
                s.querySelector('i').classList.remove('glyphicon-star-empty');
                s.querySelector('i').classList.add('glyphicon-star');
            } else {
                s.classList.remove('selected');
                s.querySelector('i').classList.remove('glyphicon-star');
                s.querySelector('i').classList.add('glyphicon-star-empty');
            }
        });
    }

    stars.forEach((star, index) => {
        star.addEventListener('click', () => handleStarSelection(index));
    });

    // 폼 전송 시 현재 선택된 별점과 함께 데이터 전송
    const form = document.querySelector('.loca-cmt-box form');
    form.addEventListener('submit', function (event) {
        event.preventDefault();
        
        // 선택된 별점과 코멘트 가져오기
        const comment = document.getElementById('comment').value;
        
        // 여기서 선택된 별점 (currentRating) 과 comment 를 서버에 전송하면 됩니다.
        console.log('별점:', currentRating);
        console.log('코멘트:', comment);
        
        // 필요한 경우, 여기에서 서버로 데이터를 전송하는 비동기 요청을 추가할 수 있습니다.
    });
});