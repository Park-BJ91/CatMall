package com.cat.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cat.mapper.OrderMapper;
import com.cat.model.GoodsVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderTest {
	
	@Autowired
	private OrderMapper mapper;
	
	/* ��ǰ ����(�ֹ� ó��) */
	/*
	@Test
	public void getOrderInfoTest() {
		
		 OrderItemDTO orderInfo = mapper.getOrderInfo(6);
		 
		 System.out.println("result : " + orderInfo);
	}
	*/
	
	
	/* vam_order ���̺� ��� */
	
	/*	
	@Test
	public void enrollOrderTest() {
		OrderDTO ord = new OrderDTO();
		List<OrderItemDTO> orders = new ArrayList();
		
		OrderItemDTO order1 = new OrderItemDTO();
		
		order1.setGoods_NO(6);
		order1.setAmount(15);
		order1.setPrice(8888);
		order1.setDiscount(0.5);
		order1.initSaleTotal();
		
		
		 
		ord.setOrders(orders);
		
		ord.setOrder_ID("test");
		ord.setName("test");
		ord.setUser_NO("4");
		ord.setZic("11111");
		ord.setAddr1("�ּ�1");
		ord.setAddr2("�ּ�2");
		ord.setOrder_STATE("����ߺ�");
		ord.getOrderPriceInfo();
		
		mapper.enrollOrder(ord);		
		
	}
	*/
	
	/* ��ǰ ��� ���� */
	  /*
	  @Test public void deductStockTest() { 
		  
	  GoodsVO vo= new GoodsVO();
	  
	  vo.setGoods_NO(6); vo.setStock(20);
	  
	  mapper.deductStock(vo); 
	  
	  }
	 
	  */

}
