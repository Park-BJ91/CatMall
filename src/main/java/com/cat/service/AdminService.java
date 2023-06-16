package com.cat.service;

import java.util.List;

import com.cat.model.CateVO;
import com.cat.model.Criteria2;
import com.cat.model.GoodsVO;
import com.cat.model.OrderDTO;



public interface AdminService {
	
	public void goodsEnroll(GoodsVO VO)throws Exception;
	
	public List<CateVO> cateList()throws Exception;
	
	public List<GoodsVO> goodsGetList(Criteria2 cri)throws Exception;
	
	public int goodsGetTotal(Criteria2 cri)throws Exception;
	
	public GoodsVO goodsDetail(int goods_NO)throws Exception;
	
	public int goodsModify(GoodsVO VO)throws Exception;
	
	public int goodsDelete(int goods_NO);
	
	/* 주문 상품 리스트 */
	public List<OrderDTO> getOrderList(Criteria2 cri);
	
	/* 주문 총 갯수 */
	public int getOrderTotal(Criteria2 cri);
	


}
