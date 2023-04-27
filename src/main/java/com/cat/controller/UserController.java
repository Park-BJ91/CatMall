package com.cat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@PostMapping("join")
	public String JoinPost(UserVO user,RedirectAttributes rttr) {
		
		
		service.userJoin(user);
		log.info("∞°¿‘");
		
		return "redirect:/main/index";
	}
	
	

}
