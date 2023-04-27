package com.cat.model;

import javax.xml.crypto.Data;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString


public class UserVO {
	
	private int user_NO;
	
	private String name;
	
	private String email;
	
	private String pwd;
	
	private String addr1;
	
	private String addr2;
	
	private String addr3;
	
	private int grade;
	
	private Data regdate_DT;
	
	private Data modify_DT;

}
