/**
 * 
 */

// iframe 높이 자동 조절
var iframe = document.querySelector('.comment_box > iframe');

iframe.addEventListener('load', function() {
	iframe.style.height = iframe.contentDocument.body.scrollHeight + 'px';
});
// 페이지 로드 시 하트 수 초기화
document.addEventListener("DOMContentLoaded", function() {
    const countElement = document.getElementById('likeCount');
    const storedCount = localStorage.getItem('likeCount');

    if (storedCount) {
        countElement.textContent = storedCount;
    }
});

function increaseLikes() {
    const countElement = document.getElementById('likeCount');
    let count = parseInt(countElement.textContent, 10);
    count++;
    countElement.textContent = count;

    // 로컬 스토리지에 하트 수 저장
    localStorage.setItem('likeCount', count);
}