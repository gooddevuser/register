package com.mypage.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	private int bid;
	private String btitle;
	private Date b_create_date;
	private Date b_modify_date;
	
	
}