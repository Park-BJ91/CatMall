package com.cat.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cat.model.CartDTO;
import com.cat.model.UserVO;
import com.cat.service.CartService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/cart")
@Log4j
public class CartController {
	
	@Autowired
	private CartService service;
	
	
	@PostMapping("/add")
	@ResponseBody
	public String addCart(CartDTO cart, HttpServletRequest request)throws Exception{
		log.info(cart);
		
		HttpSession session = request.getSession();
		UserVO uvo = (UserVO)session.getAttribute("user");
		if(uvo == null) {
			log.info("로그인 x");
			return "5";
		}
		
		
		int result = service.addCart(cart);
		
		log.info("uvo ...... : " +uvo);
		log.info("result ...... : " +result);
		
		return result + "";
		
	}
	
	@GetMapping("/cart/{user_NO}")
	public String cartPageGET(@PathVariable("user_NO") int user_NO, Model model)throws Exception {

		
		model.addAttribute("cartInfo", service.cartList(user_NO));
		
		return "/cart/cart";
	}
	
	/* 장바구니 수량 수정 */
	@PostMapping("/update")
	public String updateCart(CartDTO cart)throws Exception{
		
		service.modifyAmount(cart);
		
		return "redirect:/cart/cart/" + cart.getUser_NO();
		
	}
	
	@PostMapping("/delete")
	public String deleteCart(CartDTO cart)throws Exception{
		
		log.info(cart);
		
		service.deleteCart(cart);
		
		return "redirect:/cart/cart/" + cart.getUser_NO();
		
	}

	

	
	
}
