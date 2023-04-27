package com.cat.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cat.mapper.UserMapper;
import com.cat.model.UserVO;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper mapper;
	
	
	//회원가입
	@Override
	public void userJoin(UserVO user) {
		
		mapper.userJoin(user);
		
	}

}
