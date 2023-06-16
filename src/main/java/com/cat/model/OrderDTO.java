package com.cat.model;

import java.util.Date;
import java.util.List;

public class OrderDTO {
	
	/* �ֹ� ��ȣ */
	private String order_ID;
	
	/* ��� �޴��� */
	private String name;
	
	/* �ֹ� ȸ�� ��ȣ */
	private String user_NO;
	
	/* �����ȣ */
	private String zic;
	
	/* ȸ�� �ּ� */
	private String Addr1;
	
	/* ȸ�� ���ּ� */
	private String Addr2;
	
	/* �ֹ� ���� */
	private String order_STATE;
	
	/* �ֹ� ��ǰ */
	private List<OrderItemDTO> orders;	
	
	/* ��ۺ� */
	private int deliveryCost;
	
	/* �ֹ� ��¥ */
	private Date order_DT;
	
	/* DB���̺� ���� ���� �ʴ� ������ */
	
	/* �ǸŰ�(��� ��ǰ ���) */
	private int orderSalePrice;
		
	/* ���� �Ǹ� ��� */
	private int orderFinalSalePrice;

	public String getOrder_ID() {
		return order_ID;
	}

	public void setOrder_ID(String order_ID) {
		this.order_ID = order_ID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUser_NO() {
		return user_NO;
	}

	public void setUser_NO(String user_NO) {
		this.user_NO = user_NO;
	}

	public String getZic() {
		return zic;
	}

	public void setZic(String zic) {
		this.zic = zic;
	}

	public String getAddr1() {
		return Addr1;
	}

	public void setAddr1(String addr1) {
		Addr1 = addr1;
	}

	public String getAddr2() {
		return Addr2;
	}

	public void setAddr2(String addr2) {
		Addr2 = addr2;
	}

	public String getOrder_STATE() {
		return order_STATE;
	}

	public void setOrder_STATE(String order_STATE) {
		this.order_STATE = order_STATE;
	}

	public List<OrderItemDTO> getOrders() {
		return orders;
	}

	public void setOrders(List<OrderItemDTO> orders) {
		this.orders = orders;
	}

	public int getDeliveryCost() {
		return deliveryCost;
	}

	public void setDeliveryCost(int deliveryCost) {
		this.deliveryCost = deliveryCost;
	}

	public Date getOrder_DT() {
		return order_DT;
	}

	public void setOrder_DT(Date order_DT) {
		this.order_DT = order_DT;
	}

	public int getOrderSalePrice() {
		return orderSalePrice;
	}

	public void setOrderSalePrice(int orderSalePrice) {
		this.orderSalePrice = orderSalePrice;
	}

	public int getOrderFinalSalePrice() {
		return orderFinalSalePrice;
	}

	public void setOrderFinalSalePrice(int orderFinalSalePrice) {
		this.orderFinalSalePrice = orderFinalSalePrice;
	}

	@Override
	public String toString() {
		return "OrderDTO [order_ID=" + order_ID + ", name=" + name + ", user_NO=" + user_NO + ", zic=" + zic
				+ ", Addr1=" + Addr1 + ", Addr2=" + Addr2 + ", order_STATE=" + order_STATE + ", orders=" + orders
				+ ", deliveryCost=" + deliveryCost + ", order_DT=" + order_DT + ", orderSalePrice=" + orderSalePrice
				+ ", orderFinalSalePrice=" + orderFinalSalePrice + "]";
	}
	
	
	public void getOrderPriceInfo() {
		/* ��ۺ�� */
			if(orderSalePrice >= 30000) {
				deliveryCost = 0;
			} else {
				deliveryCost = 3000;
			}
		/* ���� ���(��ǰ ��� + ��ۺ�) */
	
			orderFinalSalePrice = orderSalePrice + deliveryCost ;
	
	}
	

}
