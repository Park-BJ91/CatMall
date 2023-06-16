package com.cat.mapper;

import com.cat.model.UserVO;

public interface UserMapper {
	
	
	public void userJoin(UserVO user);
	
	public int mailCk(String email);
	
	public UserVO login(UserVO user);

	/* 주문자 주소 정보 */
	// 회원정보를 생생해내는 메서드의 선언부
	public UserVO userInfo(String user_NO);
}
