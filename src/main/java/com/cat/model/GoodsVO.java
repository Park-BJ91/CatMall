package com.cat.model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class GoodsVO {
	
	private int goods_NO;
	
	private String goods_NM;
	
	private int cate_NO;
	
	private int price;
	
	private int stock;
	
	private double discount;
	
	private String cate_NM;
	
	private int cate_PR;
	
	private String cate_PRNM;
	
	private String contents;
	
	private String intro;
	
	private String img_PATH;
	
	private String img_NM;
	
	private String uuid;
			
	private Date create_DT;
	
	
	
	

	
}



