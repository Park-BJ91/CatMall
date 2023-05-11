package com.cat.mapper;

import com.cat.model.UserVO;

public interface UserMapper {
	
	
	public void userJoin(UserVO user);
	
	public int mailCk(String email);
	
	public UserVO login(UserVO user);

}
