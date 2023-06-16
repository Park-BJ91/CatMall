package com.cat.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cat.mapper.CartMapper;
import com.cat.model.CartDTO;
import com.cat.service.CartService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartTest {
	
	@Autowired
	private CartMapper mapper;
	
	@Autowired
	private CartService service;
	
	/*
	@Test
	public void addCart() {
		int user_NO = 1;
		int goods_NO = 1;
		int amount = 2;
		
		CartDTO cart = new CartDTO();
		cart.setUser_NO(user_NO);
		cart.setGoods_NO(goods_NO);
		cart.setAmount(amount);
		
		int result = 0;
		result = mapper.addCart(cart);
		
		System.out.println("결과 : " + result);
		
	}
	*/
	
	/*
	@Test
	public void modifyCartTest() {
		int user_NO = 1;
		int amount = 5;
		
		CartDTO cart = new CartDTO();
		cart.setUser_NO(user_NO);
		cart.setAmount(amount);
		
		mapper.modifyAmount(cart);
		
	}
	*/
	
	/*
	@Test
	public void getCartTest() {
		int user_NO = 1;
		
		
		List<CartDTO> list = mapper.cartList(user_NO);
		
		for(CartDTO cart : list) {
			System.out.println(cart);
			cart.initSaleTotal();
			System.out.println("init cart : " + cart);
		}

	}
	*/
	
	/*
	@Test
	public void checkCartTest()throws Exception {
		
		int user_NO = 2;
		int goods_NO = 1;
		
		CartDTO cart = new CartDTO();
		cart.setUser_NO(user_NO);
		cart.setGoods_NO(goods_NO);
		
		CartDTO resutlCart = mapper.cartCheck(cart);
		
		System.out.println("결과 : " + resutlCart);
		
		
	}
	*/
	
	/*
	@Test
	public void addCartTest()throws Exception{
		String user_NO = "2";
		int goods_NO = 1;
		int amount = 5;
		
		CartDTO dto = new CartDTO();
		dto.setUser_NO(user_NO);
		dto.setGoods_NO(goods_NO);
		dto.setAmount(amount);
		
		int result = service.addCart(dto);
		
		System.out.println("** result : " + result);
		
	}
	*/
	
	/* 장바구니 제거(주문 처리) */
	@Test
	public void deleteOrderCart() {
		int user_NO = 5;
		int goods_NO = 4;
		
		CartDTO dto = new CartDTO();
		dto.setUser_NO("5");
		dto.setGoods_NO(goods_NO);
		
		mapper.deleteOrderCart(dto);
		
	}
	
	


}
