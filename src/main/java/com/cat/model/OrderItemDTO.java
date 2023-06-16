package com.cat.model;

public class OrderItemDTO {
	
	/* �ֹ� ��ȣ */
	private String order_ID;
	
	/* ��ǰ ��ȣ */
    private int goods_NO;
    
	/* �ֹ� ���� */
    private int amount;
    
	/* vam_orderItem �⺻Ű */
    private int order_IT_ID;
    
	/* ��ǰ �� �� ���� */
    private int price;
    
	/* ��ǰ ���� �� */
    private double discount;
        
	/* DB���̺� ���� ���� �ʴ� ������ */
    
	/* ���� ����� ���� */
    private int salePrice;
    
	/* �� ����(���� ����� ���� * �ֹ� ����) */
    private int totalPrice;
    
	public void initSaleTotal() {
		this.salePrice = (int) (this.price * (1-this.discount));
		this.totalPrice = this.salePrice*this.amount;

	}
    
    

	public String getOrder_ID() {
		return order_ID;
	}



	public void setOrder_ID(String order_ID) {
		this.order_ID = order_ID;
	}



	public int getGoods_NO() {
		return goods_NO;
	}



	public void setGoods_NO(int goods_NO) {
		this.goods_NO = goods_NO;
	}



	public int getAmount() {
		return amount;
	}



	public void setAmount(int amount) {
		this.amount = amount;
	}



	public int getOrder_IT_ID() {
		return order_IT_ID;
	}



	public void setOrder_IT_ID(int order_IT_ID) {
		this.order_IT_ID = order_IT_ID;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public double getDiscount() {
		return discount;
	}



	public void setDiscount(double discount) {
		this.discount = discount;
	}



	public int getSalePrice() {
		return salePrice;
	}



	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}



	public int getTotalPrice() {
		return totalPrice;
	}



	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}



	@Override
	public String toString() {
		return "OrderItemDTO [order_ID=" + order_ID + ", goods_NO=" + goods_NO + ", amount=" + amount + ", order_IT_ID="
				+ order_IT_ID + ", price=" + price + ", discount=" + discount + ", salePrice=" + salePrice
				+ ", totalPrice=" + totalPrice + "]";
	}
    
    


}
