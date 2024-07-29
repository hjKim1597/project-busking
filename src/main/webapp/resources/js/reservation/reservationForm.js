window.onload = function() {
    const stars = document.querySelectorAll('.cmt-star .star i');
    stars.forEach((star, index) => {
        star.addEventListener('click', function() {
            stars.forEach((s, i) => {
                if (i <= index) {
                    s.classList.add('checked');
                } else {
                    s.classList.remove('checked');
                }
            });
            document.getElementById('rating').value = index + 1; // Save the rating value
        });
    });
    
     initializeCalendar();
};


function validateForm() {
    // Validation logic here
     return true;
}

function goBackToList() {
    window.location.href = 'reservation.reservation';
    }

function confirmReviewSubmission() {
    return confirm('리뷰를 등록하시겠습니까?');
}

function validateForm() {
    var selectedDate = document.getElementById("selectedDate").value;
    var startTime = document.getElementById("startTime").value;
    var endTime = document.getElementById("endTime").value;

    if (!selectedDate) {
        alert("날짜를 선택해주세요.");
        event.preventDefault();
        return false;
    }

    if (!startTime || !endTime) {
        alert("시간을 선택해주세요.");
        event.preventDefault();
        return false;
    }

    return true;
}

// Function to initialize calendar for the next month
function initializeCalendar() {
    var date = new Date();
    var nextMonth = new Date(date.getFullYear(), date.getMonth() + 1); // Calculate next month
// 달력 script
// 날짜 객체 생성
var date = new Date();
// 달력 연도
var calendarYear = date.getFullYear();
// 달력 월
var calendarMonth = date.getMonth() + 2;
// 달력 일
var calendarToday = date.getDate();

    var calendarYear = nextMonth.getFullYear();
    var calendarMonth = nextMonth.getMonth() + 1; // Adjust to 1-based index for display

    var monthLastDate = new Date(calendarYear, calendarMonth, 0);
    var calendarMonthLastDate = monthLastDate.getDate();
    var monthStartDay = new Date(calendarYear, calendarMonth - 1, 1);
    var calendarMonthStartDay = monthStartDay.getDay();

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

    var calendarPos = 0;
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

    document.getElementById("calendar").addEventListener('click', (e) => {
        if (e.target.tagName != "SPAN") return;
        if (e.target.innerHTML == "") return;

        var calendarTdList = document.querySelectorAll("#calendar table tbody td");

        calendarTdList.forEach(function(td) {
            td.classList.remove('selected');
        });

        e.target.parentElement.classList.add("selected");

        var selectedDate = `${calendarYear}-${calendarMonth}-${e.target.innerHTML}`;
        document.getElementById("selectedDate").value = selectedDate;
    });
}

// 시간 클릭 이벤트
function selectTime(startTime, endTime) {
    document.getElementById("startTime").value = startTime;
    document.getElementById("endTime").value = endTime;

    document.querySelectorAll('.resForm-mid-button button').forEach(button => {
        button.classList.remove('selected');
    });

    event.target.classList.add('selected');
}

// 목록으로 버튼 클릭 이벤트
function goToList() {
    window.location.href = "/Busking/reservation/reservation.reservation";
}

// 지도 스크립트
// 지도를 담을 영역의 DOM 레퍼런스
var mapContainer = document.querySelector('.map-container #map');

// 지도를 생성할 때 필요한 기본 옵션
var mapOption = {
    center: new kakao.maps.LatLng(locaY, locaX), // 지도의 중심 좌표
    level: 3 // 지도의 확대 레벨
};

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

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(locaY, locaX); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
    position: markerPosition, 
    content: '<div style="padding:5px;">' + locaName + '<br><a href="https://map.kakao.com/link/map/' + locaName + ',' + locaY + ',' + locaX + '" style="color:blue" target="_blank">지도보기</a> <a href="https://map.kakao.com/link/to/' + locaName + ',' + locaY + ',' + locaX + '" style="color:blue" target="_blank">길찾기</a></div>' 
});

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

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        infowindow.open(map, marker); 
    }
    
});

/*var timeBtn = document.querySelector(".time-btn");
timeBtn.addEventListener("click", function() {
	timeBtn
})*/