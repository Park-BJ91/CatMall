package com.cat.controller;



import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cat.mapper.BoardMapper;
import com.cat.model.Criteria;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardTest {
	
	@Autowired
	private BoardMapper mapper;
	
	/*
	@Test
	public void enrollTestt() {
		BoardVO VO = new BoardVO();
		
		VO.setTitle("테스트");
		VO.setContent("테스트");
		VO.setWriter("테스트");
		
		
		mapper.enroll(VO);
	}
	*/
	
	/*
	@Test
	public void boardList() {
		List list = mapper.getList();
		
		for(int i=0; i<list.size(); i++) {
			log.info(list.get(i));
			
		}
		
		
	}
	*/
	
	/*
	@Test
	public void modf() {
		BoardVO vo = new BoardVO();
		
		vo.setBno(1);
		vo.setContent("수정");
		vo.setTitle("수정");
		
		mapper.modify(vo);
		
	}
	*/
	
	/*
	@Test
	public void details() {
		
		
		log.info(" : " + mapper.detail(4));
	}
	*/
	
	@Test
	public void pageTest() {
		
		Criteria cri = new Criteria();
		
		cri.setPageNum(2);
		
		List list = mapper.listPaging(cri);
		
		
		for(int i=0; i<list.size(); i++) {
			log.info(list.get(i));
		}
		
		
		
	}
	

}
