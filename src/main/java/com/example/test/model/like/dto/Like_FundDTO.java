package com.example.test.model.like.dto;

public class Like_FundDTO {

	private int bno;
	private String userid;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "Like_FundDTO [bno=" + bno + ", userid=" + userid + "]";
	}
	
	
}
