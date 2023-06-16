package com.cat.mapper;

import java.util.List;

import com.cat.model.GoodsVO;
import com.cat.model.OrderDTO;
import com.cat.model.OrderItemDTO;
import com.cat.model.OrderPageItemDTO;

public interface OrderMapper {
	
	/* �ֹ� ��ǰ ����(�ֹ��ϱ� �������� */	
	public OrderPageItemDTO getGoodsInfo(int goods_NO);
	
	/* �ֹ� ��ǰ ����(�ֹ� ó��) */	
	public OrderItemDTO getOrderInfo(int goods_NO);
	
	/* �ֹ� ���̺� ��� */
	public int enrollOrder(OrderDTO ord);
	
	/* �ֹ� ������ ���̺� ��� */
	public int enrollOrderItem(OrderItemDTO orid);
	
	/* �ֹ� ��� ���� */
	public int deductStock(GoodsVO goods);
	
	/* �ֹ� ��� */
	public int orderCancel(String order_ID);
	
	/* �ֹ� ��ǰ ����(�ֹ����) */
	public List<OrderItemDTO> getOrderItemInfo(String order_ID);
	
	/* �ֹ� ����(�ֹ����) */
	public OrderDTO getOrder(String order_ID);


}
