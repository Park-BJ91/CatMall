package com.cat.model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardVO {
	
	private int bno;
	
	private String title;
	
	private String content;
	
	private String writer;
	
	private Date create_DT;
	
	private Date update_DT;
	

}
