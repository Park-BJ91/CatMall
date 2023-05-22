package com.cat.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import lombok.extern.log4j.Log4j;


@Log4j
public class AuthInterceptor implements HandlerInterceptor{
	
	//������ ��û ���� ����
	private void saveDestination(HttpServletRequest request) {
		String uri = request.getRequestURI();
		String query = request.getQueryString();
		
		if(query == null || query.equals("null")) {
			query = "";
		}else {
			query = "?" + query;
		}
		
		if(request.getMethod().equals("GET")) {
			log.info("destination " + (uri + query));
			request.getSession().setAttribute("destination" + uri, query);
		}
		
		
	}
	

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {

		HttpSession session = request.getSession();
		
		if(session.getAttribute("user") == null) {
			log.info("�α��� ���°� �ƴմϴ�.");
			response.sendRedirect("/user/login");
			return false;
		}
	
	
		return true;
	}
	
}
