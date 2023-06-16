package com.cat.service;



import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cat.mapper.CartMapper;
import com.cat.mapper.GoodsMapper;
import com.cat.mapper.OrderMapper;
import com.cat.mapper.UserMapper;
import com.cat.model.CartDTO;
import com.cat.model.GoodsVO;
import com.cat.model.OrderCancelDTO;
import com.cat.model.OrderDTO;
import com.cat.model.OrderItemDTO;
import com.cat.model.OrderPageItemDTO;
import com.cat.model.UserVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;
	
	@Autowired
	private CartMapper cartMapper;
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private GoodsMapper goodsMapper;


	@Override
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders) {
	
		List<OrderPageItemDTO> result = new ArrayList<OrderPageItemDTO>();		
		
		for(OrderPageItemDTO ord : orders) {
			
			OrderPageItemDTO goodsInfo = orderMapper.getGoodsInfo(ord.getGoods_NO());			

			goodsInfo.setAmount(ord.getAmount());	
			
			goodsInfo.initSaleTotal();			
			
			result.add(goodsInfo);			
		}		
		
		return result;
		
	}
	
	@Override
	@Transactional
	public void order(OrderDTO ord) {
		
		/* ����� �����Ͱ������� */
		/* ȸ�� ���� */
		UserVO user = userMapper.userInfo(ord.getUser_NO());
		
		/* �ֹ� ���� */
		List<OrderItemDTO> ords = new ArrayList<>();
		for(OrderItemDTO oit : ord.getOrders()) {
			OrderItemDTO orderItem = orderMapper.getOrderInfo(oit.getGoods_NO());
			// ���� ����
			orderItem.setAmount(oit.getAmount());
			// �⺻���� ����
			orderItem.initSaleTotal();
			//List��ü �߰�
			ords.add(orderItem);
		}
		/* OrderDTO ���� */
		ord.setOrders(ords);
		ord.getOrderPriceInfo();
		
		/*DB �ֹ�,�ֹ���ǰ(,�������) �ֱ�*/
		
		/* orderId����� �� OrderDTO��ü orderId�� ���� */
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("_yyyyMMddmm");
		String order_ID = user.getUser_NO() + format.format(date);
		ord.setOrder_ID(order_ID);
		
		/* db�ֱ� */
		orderMapper.enrollOrder(ord);		//cat_order ���
		for(OrderItemDTO oit : ord.getOrders()) {		//orderItem ���
			oit.setOrder_ID(order_ID);
			orderMapper.enrollOrderItem(oit);			
		}
		
		/* ��� ���� ���� */
		for(OrderItemDTO oit : ord.getOrders()) {
			/* ���� ��� �� ���ϱ� */
			GoodsVO goods = goodsMapper.goodsInfo(oit.getGoods_NO());
			goods.setStock(goods.getStock() - oit.getAmount());
			/* ���� �� DB ���� */
			orderMapper.deductStock(goods);
		}
		
		/* ��ٱ��� ���� */
		for(OrderItemDTO oit : ord.getOrders()) {
			CartDTO dto = new CartDTO();
			dto.setUser_NO(ord.getUser_NO());
			dto.setGoods_NO(oit.getGoods_NO());
			
			cartMapper.deleteOrderCart(dto);
		}
		
		
	}
	
	@Override
	@Transactional
	public void orderCancel(OrderCancelDTO dto) {
		/* �ֹ�, �ֹ���ǰ ��ü */
		/*ȸ��*/
			UserVO user = userMapper.userInfo(dto.getUser_NO());
		/*�ֹ���ǰ*/
			List<OrderItemDTO> ords = orderMapper.getOrderItemInfo(dto.getOrder_ID());
			for(OrderItemDTO ord : ords) {
				ord.initSaleTotal();
			}
		/* �ֹ� */
			OrderDTO orw = orderMapper.getOrder(dto.getOrder_ID());
			orw.setOrders(ords);
			
			orw.getOrderPriceInfo();
			
	/* �ֹ���ǰ ��� DB */
			orderMapper.orderCancel(dto.getOrder_ID());
			
	/* ��� ��ȯ */

				
			/* ��� */
			for(OrderItemDTO ord : orw.getOrders()) {
				GoodsVO goods = goodsMapper.goodsInfo(ord.getGoods_NO());
				goods.setStock(goods.getStock() + ord.getAmount());
				orderMapper.deductStock(goods);
			}
		
	}



}
