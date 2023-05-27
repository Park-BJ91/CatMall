package com.cat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cat.model.GoodsVO;
import com.cat.service.AdminService;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin")
@Log4j
public class AdminContorller {
	
	@Autowired
	private AdminService service;

	@GetMapping("/admin-main")
	public void adminPage() {
		
	}
	
	@GetMapping("/goodsManage")
	public void goodsMangeGET()throws Exception{
		
	}
	
	@GetMapping("/goodsEnroll")
	public void goodsEnrollGET(Model model)throws Exception{
						
		ObjectMapper objm = new ObjectMapper();
		
		List list = service.cateList();
		
		String cateList = objm.writeValueAsString(list);
		
		model.addAttribute("cateList", cateList);
		
	}
	
	@PostMapping("/goodsEnroll")
	public String goodsEnrollPOST(GoodsVO VO,RedirectAttributes rttr)throws Exception{
		
		service.goodsEnroll(VO);
		
		rttr.addFlashAttribute("enroll_result", VO.getGoods_NM());
		
		return "redirect:/admin/goodsManage";
		
	}
	
	@GetMapping("/orderList")
	public void oderListGET()throws Exception{
		
	}
	
	
	
	
}
