package com.cat.mapper;

import java.util.List;

import com.cat.model.CartDTO;

public interface CartMapper {
	
	public int addCart(CartDTO cart)throws Exception;
	
	public int deleteCart(CartDTO cart);
	
	public int modifyAmount(CartDTO cart);
	
	public List<CartDTO> cartList(int user_NO);
	
	public CartDTO cartCheck(CartDTO cart);
	
	/* 카트 제거(주문) */
	public int deleteOrderCart(CartDTO dto);
	

}
