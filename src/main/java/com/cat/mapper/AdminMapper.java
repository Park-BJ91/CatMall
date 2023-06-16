package com.cat.mapper;

import java.util.List;

import com.cat.model.CateVO;
import com.cat.model.Criteria2;
import com.cat.model.GoodsVO;
import com.cat.model.OrderDTO;



public interface AdminMapper {
	
	public void goodsEnroll(GoodsVO VO);
	
	public List<CateVO> cateList();
	
	public List<GoodsVO> goodsGetList(Criteria2 cri);
	
	public int goodsGetTotal(Criteria2 cri);
	
	public GoodsVO goodsDetail(int goods_NO);
	
	public int goodsModify(GoodsVO VO);
	
	public int goodsDelete(int goods_NO);
	
	/* �ֹ� ��ǰ ����Ʈ */
	public List<OrderDTO> getOrderList(Criteria2 cri);	
	
	/* �ֹ� �� ���� */
	public int getOrderTotal(Criteria2 cri);
	


}
