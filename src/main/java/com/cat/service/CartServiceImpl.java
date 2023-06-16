package com.cat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cat.mapper.CartMapper;
import com.cat.model.CartDTO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CartServiceImpl implements CartService{
	
	@Autowired
	private CartMapper mapper;

	
	@Override
	public int addCart(CartDTO cart) throws Exception {
		
		CartDTO cartCheck = mapper.cartCheck(cart);
		
		if(cartCheck != null) {
			return 2;
		}
		
		try {
			
		
		return mapper.addCart(cart);
		
		}catch(Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public List<CartDTO> cartList(int user_NO)throws Exception {
		
		List<CartDTO> cart = mapper.cartList(user_NO);
		
		for(int i=0; i<cart.size(); i++) {
			CartDTO dto = cart.get(i);
			
			log.info("dto....." +dto);
			
			
		}
		
			log.info("cart......." +cart);
		return cart;
	}
	
	@Override
	public int modifyAmount(CartDTO cart) throws Exception {
		 
		return mapper.modifyAmount(cart);
	}
	
	@Override
	public int deleteCart(CartDTO cart) throws Exception {
		
		return mapper.deleteCart(cart);
	}
}
