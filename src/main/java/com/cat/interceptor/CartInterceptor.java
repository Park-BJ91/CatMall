package com.cat.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.cat.model.UserVO;

import lombok.extern.log4j.Log4j;

@Log4j
public class CartInterceptor implements HandlerInterceptor{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		UserVO uvo = (UserVO)session.getAttribute("user");
		
		log.info(uvo);
		
		if(uvo == null) {
			response.sendRedirect("/main/index");
			return false;
		}else {
			return true;
		}
		
		
		
	}

}
