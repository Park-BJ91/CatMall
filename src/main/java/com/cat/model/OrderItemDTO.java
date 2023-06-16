package com.cat.model;

public class OrderItemDTO {
	
	/* 주문 번호 */
	private String order_ID;
	
	/* 상품 번호 */
    private int goods_NO;
    
	/* 주문 수량 */
    private int amount;
    
	/* vam_orderItem 기본키 */
    private int order_IT_ID;
    
	/* 상품 한 개 가격 */
    private int price;
    
	/* 상품 할인 율 */
    private double discount;
        
	/* DB테이블 존재 하지 않는 데이터 */
    
	/* 할인 적용된 가격 */
    private int salePrice;
    
	/* 총 가격(할인 적용된 가격 * 주문 수량) */
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
