/**
 * 
 */
const quill = new Quill('#editor', {
    theme: 'snow',
    modules: {
        toolbar: [
            [{ 'header': [1, 2, false] }],
            ['bold', 'italic', 'underline'],
            ['link', 'image'],
            ['clean']
        ]
    }
});

document.querySelector('form').onsubmit = function() {
    // 에디터의 내용을 hidden input에 저장
    document.getElementById('content').value = quill.root.innerHTML;
};