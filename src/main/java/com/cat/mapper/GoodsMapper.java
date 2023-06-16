package com.cat.mapper;

import java.util.List;

import com.cat.model.Criteria2;
import com.cat.model.GoodsVO;

public interface GoodsMapper {
	
	public List<GoodsVO> goodsList(Criteria2 cri);
	
	public int goodsTotal(Criteria2 cri);
	
	public GoodsVO goodsInfo(int Goods_NO);

}
