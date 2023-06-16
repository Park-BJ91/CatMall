package com.cat.service;



import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cat.mapper.CartMapper;
import com.cat.mapper.GoodsMapper;
import com.cat.mapper.OrderMapper;
import com.cat.mapper.UserMapper;
import com.cat.model.CartDTO;
import com.cat.model.GoodsVO;
import com.cat.model.OrderCancelDTO;
import com.cat.model.OrderDTO;
import com.cat.model.OrderItemDTO;
import com.cat.model.OrderPageItemDTO;
import com.cat.model.UserVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;
	
	@Autowired
	private CartMapper cartMapper;
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private GoodsMapper goodsMapper;


	@Override
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders) {
	
		List<OrderPageItemDTO> result = new ArrayList<OrderPageItemDTO>();		
		
		for(OrderPageItemDTO ord : orders) {
			
			OrderPageItemDTO goodsInfo = orderMapper.getGoodsInfo(ord.getGoods_NO());			

			goodsInfo.setAmount(ord.getAmount());	
			
			goodsInfo.initSaleTotal();			
			
			result.add(goodsInfo);			
		}		
		
		return result;
		
	}
	
	@Override
	@Transactional
	public void order(OrderDTO ord) {
		
		/* 사용할 데이터가져오기 */
		/* 회원 정보 */
		UserVO user = userMapper.userInfo(ord.getUser_NO());
		
		/* 주문 정보 */
		List<OrderItemDTO> ords = new ArrayList<>();
		for(OrderItemDTO oit : ord.getOrders()) {
			OrderItemDTO orderItem = orderMapper.getOrderInfo(oit.getGoods_NO());
			// 수량 셋팅
			orderItem.setAmount(oit.getAmount());
			// 기본정보 셋팅
			orderItem.initSaleTotal();
			//List객체 추가
			ords.add(orderItem);
		}
		/* OrderDTO 셋팅 */
		ord.setOrders(ords);
		ord.getOrderPriceInfo();
		
		/*DB 주문,주문상품(,배송정보) 넣기*/
		
		/* orderId만들기 및 OrderDTO객체 orderId에 저장 */
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("_yyyyMMddmm");
		String order_ID = user.getUser_NO() + format.format(date);
		ord.setOrder_ID(order_ID);
		
		/* db넣기 */
		orderMapper.enrollOrder(ord);		//cat_order 등록
		for(OrderItemDTO oit : ord.getOrders()) {		//orderItem 등록
			oit.setOrder_ID(order_ID);
			orderMapper.enrollOrderItem(oit);			
		}
		
		/* 재고 변동 적용 */
		for(OrderItemDTO oit : ord.getOrders()) {
			/* 변동 재고 값 구하기 */
			GoodsVO goods = goodsMapper.goodsInfo(oit.getGoods_NO());
			goods.setStock(goods.getStock() - oit.getAmount());
			/* 변동 값 DB 적용 */
			orderMapper.deductStock(goods);
		}
		
		/* 장바구니 제거 */
		for(OrderItemDTO oit : ord.getOrders()) {
			CartDTO dto = new CartDTO();
			dto.setUser_NO(ord.getUser_NO());
			dto.setGoods_NO(oit.getGoods_NO());
			
			cartMapper.deleteOrderCart(dto);
		}
		
		
	}
	
	@Override
	@Transactional
	public void orderCancel(OrderCancelDTO dto) {
		/* 주문, 주문상품 객체 */
		/*회원*/
			UserVO user = userMapper.userInfo(dto.getUser_NO());
		/*주문상품*/
			List<OrderItemDTO> ords = orderMapper.getOrderItemInfo(dto.getOrder_ID());
			for(OrderItemDTO ord : ords) {
				ord.initSaleTotal();
			}
		/* 주문 */
			OrderDTO orw = orderMapper.getOrder(dto.getOrder_ID());
			orw.setOrders(ords);
			
			orw.getOrderPriceInfo();
			
	/* 주문상품 취소 DB */
			orderMapper.orderCancel(dto.getOrder_ID());
			
	/* 재고 변환 */

				
			/* 재고 */
			for(OrderItemDTO ord : orw.getOrders()) {
				GoodsVO goods = goodsMapper.goodsInfo(ord.getGoods_NO());
				goods.setStock(goods.getStock() + ord.getAmount());
				orderMapper.deductStock(goods);
			}
		
	}



}
