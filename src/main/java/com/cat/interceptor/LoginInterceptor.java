package com.cat.interceptor;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;

@Log4j
public class LoginInterceptor implements HandlerInterceptor{
	
	private static final String LOGIN = "login";
	
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		log.info("Login preHandel 작동");
		
		HttpSession session = request.getSession();
		
		
		session.invalidate();
		
		
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		HttpSession session = request.getSession();
		ModelMap modelMap = modelAndView.getModelMap();
		Object userVO = modelMap.get("user");
		
		if(userVO != null) {
			log.info("로그인 성공");
			session.setAttribute(LOGIN, userVO);
			Object destination = session.getAttribute("destination");
			response.sendRedirect(destination != null ? (String) destination : "/user/login");
		}
		
		
	}

}
