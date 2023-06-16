package com.cat.model;

public class OrderCancelDTO {
	
	private String user_NO;
	
	private String order_ID;
	
	private String keyword;
	
	private int amount;
	
	private int pageNum;

	public String getUser_NO() {
		return user_NO;
	}

	public void setUser_NO(String user_NO) {
		this.user_NO = user_NO;
	}

	public String getOrder_ID() {
		return order_ID;
	}

	public void setOrder_ID(String order_ID) {
		this.order_ID = order_ID;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	@Override
	public String toString() {
		return "OrderCancelDTO [user_NO=" + user_NO + ", order_ID=" + order_ID + ", keyword=" + keyword + ", amount="
				+ amount + ", pageNum=" + pageNum + "]";
	}
	
	

}
