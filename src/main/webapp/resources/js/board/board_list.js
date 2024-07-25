/**
 * 
 */
var pageNum = '${page}';
var pageFirst;
var pageUl = document.querySelector(".page_nav .center");

var pageItems = pageUl.querySelectorAll(".page_li");
Array.from(pageItems)
	 .filter(i => i.dataset.page == pageNum)
	 .forEach(item => item.classList.add("active"));
	 

var searchBtn = document.getElementById("search_btn");
searchBtn.addEventListener('click', (e) => {
	var subject = e.target.dataset.subject;
	var type = document.querySelector(".board_search_box").value;
	var target = document.getElementById("target");
	location.href = 'board_search.board' + subject + '?type=' + type + 'target=';
})

