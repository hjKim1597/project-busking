package com.busking.util.paging;

public class PageVO {

	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	
	private int pageNum;
	private int amount = 20;
	private int total;
	
	public PageVO(int pageNum, int total) {
		
		this.total = total;
		this.pageNum = pageNum;
		this.endPage = (int)(Math.ceil(this.pageNum / 5.0)) * 5; // 페이지 5개씩
		this.startPage = endPage - 4;
		
		int realEndPage = (int)Math.ceil(total / (double)this.amount);
		
		if(this.endPage > realEndPage) {
			this.endPage = realEndPage;
		}
		
		this.prev = this.startPage > 1;
		this.next = realEndPage > this.endPage;
		
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	
	
}
