package com.cat.service;

import java.util.List;

import com.cat.model.Criteria2;
import com.cat.model.GoodsVO;

public interface GoodsService {
	
	public List<GoodsVO> goodsList(Criteria2 cri)throws Exception;
	
	public int goodsTotal(Criteria2 cri)throws Exception;
	
	public GoodsVO goodsInfo(int Goods_NO)throws Exception;

}
