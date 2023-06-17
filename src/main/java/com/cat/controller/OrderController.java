package com.cat.controller;





import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@PostMapping("/kakaoPay")
	@ResponseBody
	public String kakaoPay() {
		

		
		
		
		
		
		try {
			URL addr = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection connection =(HttpURLConnection) addr.openConnection();
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Authorization", "KakaoAK a9e2229643515571d5dc69207b4d0562");
			connection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			connection.setDoOutput(true);
			String parmeter = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=초코파이&quantity=1&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=https://localhost:8082/order/kakaoPay.success&fail_url=https://localhost:8082/fail&cancel_url=https://localhost:8082/cancel";
			//outPutStream 주는애
			OutputStream send = connection.getOutputStream();
			DataOutputStream dataSend = new DataOutputStream(send);
			dataSend.writeBytes(parmeter);
			dataSend.close();
			
			int resultCode = connection.getResponseCode();
			
			InputStream receive;
			if(resultCode == 200) {
				receive = connection.getInputStream();
			}else {
				receive = connection.getErrorStream();				
			}
			InputStreamReader reader = new InputStreamReader(receive);
			//읽는 과정에서 형변환
			BufferedReader cast = new BufferedReader(reader);
			
			return cast.readLine();
			
			
		}catch(MalformedURLException e){
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}

		

		 
		return "";
	}
	
	
	
	

	
	
	
}
