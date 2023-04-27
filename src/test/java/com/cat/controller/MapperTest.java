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
		
		vo.setName("service �׽�Ʈ");
		vo.setEmail("service �׽�Ʈ");
		vo.setPwd("1234");
		vo.setAddr1("�׽�Ʈ1");
		vo.setAddr2("�׽�Ʈ2");
		vo.setAddr3("�׽�Ʈ3");
		vo.setGrade(0);
		
		service.userJoin(vo);
		
		
	}

}
