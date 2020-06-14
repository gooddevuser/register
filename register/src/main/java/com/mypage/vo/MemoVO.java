package com.mypage.vo;

import lombok.Data;

@Data
public class MemoVO {
	private int mno;
	private String memo;
	private String sender;
	private String Recipient;
	
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getRecipient() {
		return Recipient;
	}
	public void setRecipient(String recipient) {
		Recipient = recipient;
	}
	
}
