package com.cat.service;

import java.util.List;

import com.cat.model.CartDTO;

public interface CartService {
	
	public int addCart(CartDTO cart)throws Exception;
	
	public List<CartDTO> cartList(int user_NO)throws Exception;
	
	public int modifyAmount(CartDTO cart)throws Exception;
	
	public int deleteCart(CartDTO cart)throws Exception;

}
