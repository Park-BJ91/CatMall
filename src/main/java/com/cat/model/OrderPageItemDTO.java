package com.cat.model;

public class OrderPageItemDTO {
	
	/* 뷰로부터 전달받을 값 */
    private int goods_NO;
    
    private int amount;
    
    
	/* DB로부터 꺼내올 값 */
    private String goods_NM;
    
    private int price;
    
    private double discount;
    
    private String img_PATH;
    
    private String img_NM;
    
	/* 만들어 낼 값 */
    private int salePrice;
    
    private int totalPrice;
    
	public void initSaleTotal() {
		this.salePrice = (int) (this.price * (1-this.discount));
		this.totalPrice = this.salePrice*this.amount;
		
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

	public String getGoods_NM() {
		return goods_NM;
	}

	public void setGoods_NM(String goods_NM) {
		this.goods_NM = goods_NM;
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
		

	public String getImg_PATH() {
		return img_PATH;
	}

	public void setImg_PATH(String img_PATH) {
		this.img_PATH = img_PATH;
	}

	public String getImg_NM() {
		return img_NM;
	}

	public void setImg_NM(String img_NM) {
		this.img_NM = img_NM;
	}

	@Override
	public String toString() {
		return "OrderPageItemDTO [goods_NO=" + goods_NO + ", amount=" + amount + ", goods_NM=" + goods_NM + ", price="
				+ price + ", discount=" + discount + ", img_PATH=" + img_PATH + ", img_NM=" + img_NM + ", salePrice="
				+ salePrice + ", totalPrice=" + totalPrice + "]";
	}
	
	

}
