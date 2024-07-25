/**
 * 
 */

var deleteButton = document.querySelector(".inner_bottom_right .delete_button");
deleteButton.addEventListener('click', (e) => {
	var bno = e.target.dataset.bno;
	var subject = e.target.dataset.subject;
	var writer = e.target.dataset.writer; 
    //e.preventDefault(); // 기본 동작(예: 폼 제출) 방지
    if (confirm('삭제 하시겠습니까?')) {
        // e.target.dataset.bno을 사용하여 data-bno 값을 가져옴
        location.href = "board_delete.board" + subject + "?subject=" + subject + "&bno=" + bno + "&writer=" + writer;
    } else {
        // 아무 동작도 하지 않음
        return;
    }
});
// iframe 높이 자동 조절
var iframe = document.querySelector('.comment_box > iframe');

iframe.addEventListener('load', function() {
	iframe.style.height = iframe.contentDocument.body.scrollHeight + 'px';
});


