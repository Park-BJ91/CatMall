package com.cat.mapper;

import java.util.List;

import com.cat.model.CateVO;
import com.cat.model.GoodsVO;

public interface AdminMapper {
	
	public void goodsEnroll(GoodsVO VO);
	
	public List<CateVO> cateList();
	
	

}
