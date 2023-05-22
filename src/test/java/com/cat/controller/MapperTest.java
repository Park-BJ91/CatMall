package com.cat.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cat.mapper.UserMapper;
import com.cat.model.UserVO;
import com.cat.service.UserService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MapperTest {
	
	@Autowired
	private UserMapper mapper;
	
	@Autowired
	private UserService service;
	
	/*
	@Test
	public void joinTest()throws Exception {
		
		UserVO vo = new UserVO();
		
		vo.setName("");
		vo.setEmail("");
		vo.setPwd("");
		vo.setAddr1("");
		vo.setAddr2("");
		vo.setAddr3("");
		vo.setGrade(0);
		
		service.userJoin(vo);
		
		
	}
	*/
	
	/*
	@Test
	public void loginChk()throws Exception{
	UserVO VO = new UserVO();
	
	VO.setEmail("test@111");
	VO.setPwd("1234");
	
	mapper.login(VO);
	log.info("°á°ú °ª : " + mapper.login(VO));
	
	
	}
	*/
	
	
}
	
	
