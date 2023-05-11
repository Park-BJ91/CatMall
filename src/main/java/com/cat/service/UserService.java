package com.cat.service;

import com.cat.model.UserVO;

public interface UserService {
	
	
	public void userJoin(UserVO user)throws Exception;
	
	public int mailCk(String email)throws Exception;
	
	public UserVO login(UserVO user)throws Exception;
	

	

}
