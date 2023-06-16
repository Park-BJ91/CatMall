package com.cat.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cat.mapper.UserMapper;
import com.cat.model.UserVO;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper mapper;
	
	
	
	@Override
	public void userJoin(UserVO user)throws Exception {
		
		mapper.userJoin(user);
		
	}
	
	@Override
	public int mailCk(String email) throws Exception {
		
		
		return mapper.mailCk(email);
		
	}
	
	@Override
	public UserVO login(UserVO user) throws Exception {
		
		return mapper.login(user);
	}
	
	@Override
	public UserVO userInfo(String user_NO) {
		
		return mapper.userInfo(user_NO);
	}

}
