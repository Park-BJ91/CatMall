package com.cat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cat.mapper.GoodsMapper;
import com.cat.model.Criteria2;
import com.cat.model.GoodsVO;

@Service
public class GoodsSerivceImpl implements GoodsService{

	@Autowired
	private GoodsMapper mapper;
	
	@Override
	public List<GoodsVO> goodsList(Criteria2 cri)throws Exception {
		
		return mapper.goodsList(cri);
	}
	
	@Override
	public int goodsTotal(Criteria2 cri)throws Exception {
		
		System.out.println("service : " + cri);
		return mapper.goodsTotal(cri);
	}
	
	@Override
	public GoodsVO goodsInfo(int Goods_NO) throws Exception {
				
		
		return mapper.goodsInfo(Goods_NO);
	}
	
	
	

	
}
