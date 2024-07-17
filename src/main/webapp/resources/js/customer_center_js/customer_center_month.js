document.addEventListener('DOMContentLoaded', function() {
  const currentDate = new Date();
  const year = currentDate.getFullYear();
  const month = currentDate.getMonth(); // 0부터 시작 (1월은 0, 12월은 11)
  const firstDay = new Date(year, month, 1);
  const lastDay = new Date(year, month + 1, 0);
  const daysInMonth = lastDay.getDate();

  const tableBody = document.getElementById('calendar-body');
  let date = 1;

  // 첫 번째 요일에 맞게 시작하기
  for (let i = 0; i < 6; i++) {
      // 행(row) 생성
      const row = document.createElement('tr');

      // 요일 채우기
      for (let j = 0; j < 7; j++) {
          if (i === 0 && j < firstDay.getDay()) {
              // 첫 번째 주, 첫 번째 요일 이전
              const cell = document.createElement('td');
              row.appendChild(cell);
          } else if (date > daysInMonth) {
              // 날짜가 달의 마지막 날짜를 초과할 경우
              break;
          } else {
              // 유효한 날짜
              const cell = document.createElement('td');
              cell.textContent = date;
              if (date === currentDate.getDate() && year === currentDate.getFullYear() && month === currentDate.getMonth()) {
                  cell.classList.add('today'); // 오늘 날짜에 클래스 추가
              }
              row.appendChild(cell);
              date++;
          }
      }

      tableBody.appendChild(row); // 테이블에 행 추가
  }
});