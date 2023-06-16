package com.cat.service;

import java.util.List;

import com.cat.model.OrderCancelDTO;
import com.cat.model.OrderDTO;
import com.cat.model.OrderPageItemDTO;




public interface OrderService {


	/* �ֹ� ���� */
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders);
	
	/* �ֹ� */
	public void  order(OrderDTO ord);
	
	/* �ֹ� ��� */
	public void orderCancel(OrderCancelDTO dto);


}
