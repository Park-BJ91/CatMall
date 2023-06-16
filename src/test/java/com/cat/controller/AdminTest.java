package com.cat.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cat.mapper.AdminMapper;
import com.cat.model.GoodsVO;

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
	
	/*
	@Test
	public void CateList() {
		
		List list = mapper.cateList();
		
		for(int i = 0; i<list.size(); i++) {
			log.info("ī�װ� ���� :" + list.get(i));
		}				
		
	}
	*/
	
	/*
	@Test
	public void goodsList() {
		Criteria2 cri = new Criteria2();
		
		cri.setKeyword("test");
		
		List list = mapper.goodsGetList(cri);
		for(int i=0; i<list.size(); i++) {
			log.info("��ǰ ����Ʈ .....: " +list.get(i));
		}
		
		int result = mapper.goodsGetTotal(cri);
			log.info("��ǰ �� ���� ......:" + result);
				
	}
	*/
	
	/*
	@Test
	public void goodsDetail() {
		
		int goods_NO = 6;
		
		
		
		GoodsVO result = mapper.goodsDetail(goods_NO);
		
		log.info("�� �� : " +result);
	}
	*/
	
	/*
	@Test
	public void modTest() {
		GoodsVO vo = new GoodsVO();
		
		vo.setGoods_NO(4);
		vo.setGoods_NM("����");
		vo.setCate_NO(4);
		vo.setPrice(44444);
		vo.setStock(3);
		vo.setDiscount(0.05);
		vo.setContents("���� test");
		vo.setIntro("intro test");
		vo.setImg_NM("imgNM");
		vo.setImg_PATH("imgPath");
		vo.setCreate_DT(null);
		
		mapper.goodsModify(vo);
		
		
	}
	*/
	
	@Test
	public void dede() {
		
		
		mapper.goodsDelete(2040);
		
	}
	
	
}
