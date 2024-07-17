/**
 * 
 */
document.addEventListener('DOMContentLoaded', function() {

    // 제출 버튼 클릭 이벤트 핸들러
    document.getElementById('submitAll').addEventListener('click', function(event) {
        event.preventDefault(); // 기본 제출 이벤트 방지

        // 임시 폼 생성
        var tempForm = document.createElement('form');
        tempForm.method = 'post';
        tempForm.action = '#'; // 서버 엔드포인트로 변경

        // 각 폼의 입력값을 임시 폼에 추가
        var forms = document.querySelectorAll('#form-container form');
        forms.forEach(function(form) {
            var inputs = form.querySelectorAll('input');
            inputs.forEach(function(input) {
                var hiddenInput = document.createElement('input');
                hiddenInput.type = 'hidden';
                hiddenInput.name = input.name;
                hiddenInput.value = input.value;
                tempForm.appendChild(hiddenInput);
            });
        });

        // 임시 폼을 body에 추가하고 제출
        document.body.appendChild(tempForm);
        tempForm.submit();

        alert('예약이 성공적으로 접수 되었습니다.');
    
    });
});