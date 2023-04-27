package com.cat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cat.model.UserVO;
import com.cat.service.UserService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user")
@Log4j
public class UserController {
	
	@Autowired
	private UserService service;
	
	@GetMapping("/login")
	public void LoginPage() {
		
		
	}
	
	@GetMapping("/join")
	public void JoinPage() {
		
	}
	
	@PostMapping("/join")
	public String JoinPost(UserVO user)throws Exception {
		
		
		service.userJoin(user);
		log.info("가입");
		
		return "redirect:/main/index";
	}
	
	@PostMapping("/emailCK")
	@ResponseBody
	public String userEmailCK(String email)throws Exception{
		
		int result = service.mailCk(email);
		 
		
		if(result != 0) {
			return "fail";
		}else {
			return "success ";
		}
		
		
		
	}
	
	

}
