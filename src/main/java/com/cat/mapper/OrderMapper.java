package com.cat.mapper;

import java.util.List;

import com.cat.model.GoodsVO;
import com.cat.model.OrderDTO;
import com.cat.model.OrderItemDTO;
import com.cat.model.OrderPageItemDTO;

public interface OrderMapper {
	
	/* 주문 상품 정보(주문하기 눌렀을때 */	
	public OrderPageItemDTO getGoodsInfo(int goods_NO);
	
	/* 주문 상품 정보(주문 처리) */	
	public OrderItemDTO getOrderInfo(int goods_NO);
	
	/* 주문 테이블 등록 */
	public int enrollOrder(OrderDTO ord);
	
	/* 주문 아이템 테이블 등록 */
	public int enrollOrderItem(OrderItemDTO orid);
	
	/* 주문 재고 차감 */
	public int deductStock(GoodsVO goods);
	
	/* 주문 취소 */
	public int orderCancel(String order_ID);
	
	/* 주문 상품 정보(주문취소) */
	public List<OrderItemDTO> getOrderItemInfo(String order_ID);
	
	/* 주문 정보(주문취소) */
	public OrderDTO getOrder(String order_ID);


}
