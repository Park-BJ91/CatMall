package com.cat.service;

import java.util.List;

import com.cat.model.CateVO;
import com.cat.model.GoodsVO;

public interface AdminService {
	
	public void goodsEnroll(GoodsVO VO)throws Exception;
	
	public List<CateVO> cateList()throws Exception;

}
