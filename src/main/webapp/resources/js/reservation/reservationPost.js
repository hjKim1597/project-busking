window.onload = function() {
    document.getElementById('form1').addEventListener('submit', function(event) {
        var privacyPolicyChecked = document.getElementById('privacy-policy').checked;
        var reservationConfirmationChecked = document.getElementById('reservation-confirmation').checked;

        var resContent = document.getElementById('res-content').value.trim();
        var resCount = document.getElementById('res-count').value.trim();

        if (!privacyPolicyChecked || !reservationConfirmationChecked) {
            alert('약관에 동의해야 합니다.');
            event.preventDefault();
            return;
        } 

        if (resContent === '' || resCount === '') {
            alert('모든 필드를 작성해야 합니다.');
            event.preventDefault();
            return;
        }
    });
};
