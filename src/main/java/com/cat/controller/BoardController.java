package com.cat.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cat.model.BoardVO;
import com.cat.model.Criteria;
import com.cat.model.UserVO;
import com.cat.model.pageMakeDTO;
import com.cat.service.BoardService;
import com.cat.service.UserService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board")
@Log4j
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private UserService userService;

	@GetMapping("/main")
	public void boardPage(Model model,Criteria cri)throws Exception {
		
		model.addAttribute("list", service.listPaging(cri));
		
		int total = service.getTotal(cri);
		
		pageMakeDTO pageMake = new pageMakeDTO(cri, total);
		
		model.addAttribute("pageMaker", pageMake);
		
	}
	
	@GetMapping("/enroll")
	public void enrollPage(Model model,HttpServletRequest request)throws Exception {
		
		HttpSession session = request.getSession();
		
		
	
			
		model.addAttribute("lvo",session);
		log.info(session);
		
	}
	
	@PostMapping("/enroll")
	public String enrollPost(BoardVO VO)throws Exception{
		
		log.info("등록 완료");
		
		service.enroll(VO);
		
		return "redirect:/board/main";
	}
	
	@GetMapping("/details")
	public void detailPage(int bno,Model model,Criteria cri,UserVO user)throws Exception{
		
		model.addAttribute("user",userService.login(user));
		model.addAttribute("pageInfo", service.detail(bno));
		model.addAttribute("cri",cri);
		
	}
	
	@GetMapping("/modify")
	public void modifyPage(int bno,Model model,Criteria cri)throws Exception {
		
		model.addAttribute("pageInfo", service.detail(bno));
		model.addAttribute("cri", cri);
	}
	
	@PostMapping("/modify")
	public String modifyPost(BoardVO VO)throws Exception{
		
		service.modify(VO);
		

		
		return "redirect:/board/main";
		
	}
	
	@PostMapping("/delete")
	public String deletePost(int bno)throws Exception{
		
		service.delete(bno);
		
		return "redirect:/board/main";
	}
	
	
	
}
