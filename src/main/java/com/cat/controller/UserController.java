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
			
			beforePw = user.getPwd(); //사용자가 제출한 Pwd
			encodePw = lvo.getPwd();  //데이터 베이스에서 인코딩 된 Pwd
			
			
			if(true == bcrypt.matches(beforePw, encodePw)) {
				
				lvo.setPwd("");		//인코딩된 Pwd 정보 지움						
				session.setAttribute("user", lvo);
				log.info("전달받은 값 : " + user);
				log.info("전달받은 값 : " + lvo);
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
		
		log.info("비동기 로그아웃 처리");
		        
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
	
		log.info("이메일 데이터 전송");
		log.info("인증번호 : " + email);
		
		Random random = new Random();
		
		int ckNum = random.nextInt(888888) + 111111;
		
	       /* 이메일 보내기 */
        String setFrom = "gothog@naver.com";
        String toMail = email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = 
                "홈페이지를 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + ckNum + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
        
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
