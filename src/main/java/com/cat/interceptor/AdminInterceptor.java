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
		
		// ���� "member" session�� ȣ���Ͽ� MemberVOŸ���� lvo ������ �����մϴ�.
		//( MemberVO Ÿ������ �� ��ȯ(Casting) ���־�� �մϴ�.
		UserVO lvo = (UserVO)session.getAttribute("user");
		
		if(lvo == null || lvo.getGrade() == 0) {
			
			response.sendRedirect("/main/index");
			
			return false;
			
		}
		
		return true;
	}
	
}
