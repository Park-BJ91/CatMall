package com.cat.controller;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cat.mapper.AdminMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AdminTest {
	
	@Autowired
	private AdminMapper mapper;
	
	/*
	@Test
	public void goodsEnrollTest(){
		GoodsVO vo = new GoodsVO();
		
		vo.setGoods_NM("gNM");
		vo.setCate_NO(6);
		vo.setPrice(1000);
		vo.setStock(10);
		vo.setDiscount(0.2);
		vo.setContents("test");
		vo.setIntro("ttest");
		vo.setImg_NM("imgNM");
		vo.setImg_PATH("imgPath");
		vo.setCreate_DT(null);
		
		
		mapper.goodsEnroll(vo);
		
	}
	*/
	
	@Test
	public void CateList() {
		
		List list = mapper.cateList();
		
		for(int i = 0; i<list.size(); i++) {
			log.info("카테고리 내용 :" + list.get(i));
		}
		
		
		
	}
	
}
