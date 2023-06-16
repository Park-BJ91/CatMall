package com.cat.controller;





import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cat.model.OrderDTO;
import com.cat.model.OrderPageDTO;
import com.cat.service.OrderService;
import com.cat.service.UserService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	 
	@Autowired
	private UserService userService;
	
	@GetMapping("/order/{user_NO}")
	public String orderPgaeGET(@PathVariable("user_NO") String user_NO, OrderPageDTO opd, Model model)throws Exception {
		
		model.addAttribute("orderList", orderService.getGoodsInfo(opd.getOrders()));
		model.addAttribute("userInfo", userService.userInfo(user_NO));
		 		
		return "/order/order";
		
	}
	
	@PostMapping("/order")
	public String orderPagePost(OrderDTO od, HttpServletRequest request) {
		
		System.out.println("orderDTO : ..." +od);	
		
		orderService.order(od);
		
		return "redirect:/main/index";
	}
	
	

	
	
	
}
