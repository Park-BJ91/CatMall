package com.cat.controller;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cat.mapper.GoodsMapper;
import com.cat.model.Criteria2;
import com.cat.model.GoodsVO;
import com.cat.service.GoodsService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class GoodsTes {

	
	@Autowired
	private GoodsMapper mapper;
	
	@Autowired
	private GoodsService service;
	
	/*
	@Test
	public void getList() {
		
		Criteria2 cri = new Criteria2();
		
		log.info("cri......." +cri);
		
		List<GoodsVO> list = mapper.goodsList(cri);
		log.info("GoodsList......." + list);
		log.info("===============");
		int goodsTotal = mapper.goodsTotal(cri);
		log.info("total.........." + goodsTotal);
		
	}
	*/
	
	/*
	@Test
	public void searTes() {
		
		Criteria2 cri = new Criteria2();
		String type = "T";
		String keyword = "y";
		String cate_NM = "";
		
		cri.setType(type);
		cri.setKeyword(keyword);
		cri.setCate_NM(cate_NM);
		
		List<GoodsVO> list = mapper.goodsList(cri);
		
		log.info(cri);
		log.info(list);
		
		
	}
	
	@Test
	public void searTes1() {
		
		Criteria2 cri = new Criteria2();
		String type = "C";
		String keyword = "";
		String cate_NM = "´Ù";
		
		cri.setType(type);
		cri.setKeyword(keyword);
		cri.setCate_NM(cate_NM);
		
		List<GoodsVO> list = mapper.goodsList(cri);
		
		log.info(cri);
		log.info(list);
		
		
	}
	*/
	
	@Test
	public void GoodsInfoTest()throws Exception {
		int goods_NO = 1;
		
		GoodsVO goodsInfo = service.goodsInfo(goods_NO);
		
		log.info(goodsInfo);
		
	}
	
	
}
