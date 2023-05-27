package com.cat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cat.mapper.AdminMapper;
import com.cat.model.CateVO;
import com.cat.model.GoodsVO;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminMapper mapper;
	
	@Override
	public void goodsEnroll(GoodsVO VO) throws Exception {
		
		mapper.goodsEnroll(VO);
	}
	
	@Override
	public List<CateVO> cateList() throws Exception {
		
		return mapper.cateList();
	}
}
