package com.cat.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private BCryptPasswordEncoder bcrypt;
	
	
	@GetMapping("/login")
	public void loginPage() {
		
		
	}
	
	@PostMapping("/login.do")
	public String loginPOST(HttpServletRequest request,UserVO user, RedirectAttributes rttr)throws Exception{

		
		HttpSession session = request.getSession();		
		
		String beforePw = "";
		String encodePw = "";
		
		UserVO lvo = service.login(user);
		
		if(lvo != null) {
			
			beforePw = user.getPwd(); //����ڰ� ������ Pwd
			encodePw = lvo.getPwd();  //������ ���̽����� ���ڵ� �� Pwd
			
			
			if(true == bcrypt.matches(beforePw, encodePw)) {
				
				lvo.setPwd("");		//���ڵ��� Pwd ���� ����						
				session.setAttribute("user", lvo);
				log.info("���޹��� �� : " + user);
				log.info("���޹��� �� : " + lvo);
				return "redirect:/main/index";
				
			}else {
				rttr.addFlashAttribute("result",0);
				return "redirect:/user/login";
			}
			
		}else {
			rttr.addFlashAttribute("result",0);
			return "redirect:/user/login";
		}
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request)throws Exception {
		
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		return "redirect:/main/index";
		
	}
	
	@GetMapping("/logout.do")
	@ResponseBody
	public void logoutPOST(HttpServletRequest request)throws Exception {
		
		log.info("�񵿱� �α׾ƿ� ó��");
		        
        HttpSession session = request.getSession();
        
        session.invalidate();
		
	}
	
	
	
	
	@GetMapping("/join")
	public void JoinPage() {
		
	}
	
	@PostMapping("/join")
	public String joinPost(UserVO user)throws Exception {
		
		String beforePw = "";
		String encodePw = "";
		
		beforePw = user.getPwd();
		encodePw = bcrypt.encode(beforePw);
		user.setPwd(encodePw);
		
		
		service.userJoin(user);
		
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

	
	
	@GetMapping("/authCheck")
	@ResponseBody
	public String emailAuth(String email){
	
		log.info("�̸��� ������ ����");
		log.info("������ȣ : " + email);
		
		Random random = new Random();
		
		int ckNum = random.nextInt(888888) + 111111;
		
	       /* �̸��� ������ */
        String setFrom = "gothog@naver.com";
        String toMail = email;
        String title = "ȸ������ ���� �̸��� �Դϴ�.";
        String content = 
                "Ȩ�������� �湮���ּż� �����մϴ�." +
                "<br><br>" + 
                "���� ��ȣ�� " + ckNum + "�Դϴ�." + 
                "<br>" + 
                "�ش� ������ȣ�� ������ȣ Ȯ�ζ��� �����Ͽ� �ּ���.";
        
        String num = Integer.toString(ckNum);
        
        try {
        	
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
        	
        }catch(Exception e) {
        	num ="error";
        }
        
        log.info("num ==" + num);
		
        
		
        
        return num;
        
	}
	
	
	

}
