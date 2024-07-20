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

