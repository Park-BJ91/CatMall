package com.cat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminContorller {

	@GetMapping("/main")
	public void adminPage() {
		
	}
	
}
