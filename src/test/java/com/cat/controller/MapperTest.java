package com.cat.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cat.mapper.UserMapper;
import com.cat.model.UserVO;
import com.cat.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MapperTest {
	
	@Autowired
	private UserMapper mapper;
	
	@Autowired
	private UserService service;
	
	@Test
	public void joinTest() {
		
		UserVO vo = new UserVO();
		
		vo.setName("service 테스트");
		vo.setEmail("service 테스트");
		vo.setPwd("1234");
		vo.setAddr1("테스트1");
		vo.setAddr2("테스트2");
		vo.setAddr3("테스트3");
		vo.setGrade(0);
		
		service.userJoin(vo);
		
		
	}

}
