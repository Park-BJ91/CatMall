package com.cat.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.cat.model.UserVO;

public class AdminInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		// 먼저 "member" session을 호출하여 MemberVO타입의 lvo 변수에 저장합니다.
		//( MemberVO 타입으로 형 변환(Casting) 해주어야 합니다.
		UserVO lvo = (UserVO)session.getAttribute("user");
		
		if(lvo == null || lvo.getGrade() == 0) {
			
			response.sendRedirect("/main/index");
			
			return false;
			
		}
		
		return true;
	}
	
}
