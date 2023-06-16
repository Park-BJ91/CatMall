package com.cat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cat.mapper.AdminMapper;
import com.cat.model.CateVO;
import com.cat.model.Criteria2;
import com.cat.model.GoodsVO;
import com.cat.model.OrderDTO;



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
	
	
	@Override
	public List<GoodsVO> goodsGetList(Criteria2 cri) throws Exception {
		
		return mapper.goodsGetList(cri);
	}
	
	@Override
	public int goodsGetTotal(Criteria2 cri)throws Exception {
		
		return mapper.goodsGetTotal(cri);
	}
	
	@Override
	public GoodsVO goodsDetail(int goods_NO) throws Exception {
		
		
		
		return mapper.goodsDetail(goods_NO);
	}
	
	@Override
	public int goodsModify(GoodsVO VO) throws Exception {
		
		return mapper.goodsModify(VO);
	}
	
	@Override
	public int goodsDelete(int goods_NO) {
		
		return mapper.goodsDelete(goods_NO);
	}
	
	@Override
	public List<OrderDTO> getOrderList(Criteria2 cri) {
		
		return mapper.getOrderList(cri);
	}
	
	@Override
	public int getOrderTotal(Criteria2 cri) {
		
		return mapper.getOrderTotal(cri);
	}

}
