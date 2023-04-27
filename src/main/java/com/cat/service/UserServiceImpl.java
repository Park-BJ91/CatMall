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

}
