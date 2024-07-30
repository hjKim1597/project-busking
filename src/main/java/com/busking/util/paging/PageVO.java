package com.busking.util.paging;

public class PageVO {
	
	private final static int LIST_AMOUNT = 5;
	
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private boolean first;
	private boolean last;
	
	private int pageNum;
	private int amount = 5;
	
	private int total;
	private int realEndPage;
	
	public PageVO(int pageNum, int total) {
		
		this.total = total;
		this.pageNum = pageNum;
		this.endPage = (int)(Math.ceil(this.pageNum / 5.0)) * LIST_AMOUNT; // 페이지 5개씩
		this.startPage = endPage - LIST_AMOUNT + 1;
		
		this.realEndPage = (int)Math.ceil(total / (double)this.amount);
		
		if(this.endPage > this.realEndPage) {
			this.endPage = this.realEndPage;
		}
		this.first = pageNum == 1;
		this.last = pageNum == realEndPage;
		
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

	public int getRealEndPage() {
		return realEndPage;
	}

	public void setRealEndPage(int realEndPage) {
		this.realEndPage = realEndPage;
	}

	public boolean isFirst() {
		return first;
	}

	public void setFirst(boolean first) {
		this.first = first;
	}

	public boolean isLast() {
		return last;
	}

	public void setLast(boolean last) {
		this.last = last;
	}
	
	
}
