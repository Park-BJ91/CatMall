package com.cat.service;

import java.util.List;

import com.cat.model.OrderCancelDTO;
import com.cat.model.OrderDTO;
import com.cat.model.OrderPageItemDTO;




public interface OrderService {


	/* 주문 정보 */
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders);
	
	/* 주문 */
	public void  order(OrderDTO ord);
	
	/* 주문 취소 */
	public void orderCancel(OrderCancelDTO dto);


}
