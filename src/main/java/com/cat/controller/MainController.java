package com.cat.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cat.model.Criteria2;
import com.cat.model.GoodsVO;
import com.cat.model.UserVO;
import com.cat.model.pageDTO;
import com.cat.service.GoodsService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/main")
@Log4j
public class MainController {
	
	@Autowired
	private GoodsService gService;
	
	@GetMapping("/index")
	public void indexPage() {
		
	}
	
	@PostMapping("/index")
	public void indexPOST() {
		
	}
	
	@GetMapping("/search")
	public String searchGoods(Criteria2 cri,Model model)throws Exception{
		
		
		

		
		List<GoodsVO> list = gService.goodsList(cri);
	
		
		if(!list.isEmpty()) {
			
			model.addAttribute("list",list);

		}else {
			model.addAttribute("listCheck", "empty");
			
			return "/main/search";
		}
		
		model.addAttribute("pageMarker", new pageDTO(cri, gService.goodsTotal(cri)));
		
		
		return "/main/search";
	}
	
	@GetMapping("/goodsDetail/{goods_NO}")
	public String goodsDetail(@PathVariable("goods_NO")int goods_NO,Model model,HttpServletRequest request)throws Exception{
		

			
		
			model.addAttribute("goodsInfo", gService.goodsInfo(goods_NO));
		
		return "/main/goodsDetail";
	}
	


}
