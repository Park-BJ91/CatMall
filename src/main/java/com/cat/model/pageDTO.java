package com.cat.model;



public class pageDTO {
	
    /* 시작 페이지 */
    private int startPage;
    
    /* 끝 페이지 */
    private int endPage;
    
    /* 이전 페이지, 다음 페이지 존재유무 */
    private boolean prev, next;
    
    /*전체 게시물 수*/
    private int total;
    
    /* 현재 페이지, 페이지당 게시물 표시수 정보 */
    private Criteria2 cri;
    
    public pageDTO(Criteria2 cri,int total) {
		
    	this.cri = cri;
    	this.total = total;
    	
    	this.endPage =(int)(Math.ceil(cri.getPageNum()/10.0))*10;
    	
    	this.startPage = this.endPage-9;
    	
    	int pinalle = (int)(Math.ceil(total * 10/cri.getAmount()));
    	
    	/* 전체 마지막 페이지(realend)가 화면에 보이는 마지막페이지(endPage)보다 작은 경우, 보이는 페이지(endPage) 값 조정 */
    	if(pinalle < this.endPage) {
    		this.endPage = pinalle;
    	}
    	
    	/* 시작 페이지(startPage)값이 1보다 큰 경우 true */
    	this.prev = this.startPage > 1;
    	/* 마지막 페이지(endPage)값이 1보다 큰 경우 true */
    	this.next = this.endPage < pinalle;
    	
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

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Criteria2 getCri() {
		return cri;
	}

	public void setCri(Criteria2 cri) {
		this.cri = cri;
	}

	@Override
	public String toString() {
		return "pageMakeDTO [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", total=" + total + ", cri=" + cri + "]";
	}
    
    
    

}

