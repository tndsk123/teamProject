package com.example.test.model.account.dto;

import java.util.Date;

public class AccountDTO {

	private int cno;
	private String userid;
	private String username;
	private String account_bank;
	private String account_passwd;
	private String account_number;
	private int account_money;
	private String buy_passwd;
	private int primary_kard;
	private Date append_date;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getAccount_bank() {
		return account_bank;
	}
	public void setAccount_bank(String account_bank) {
		this.account_bank = account_bank;
	}
	public String getAccount_passwd() {
		return account_passwd;
	}
	public void setAccount_passwd(String account_passwd) {
		this.account_passwd = account_passwd;
	}
	public String getAccount_number() {
		return account_number;
	}
	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}
	public int getAccount_money() {
		return account_money;
	}
	public void setAccount_money(int account_money) {
		this.account_money = account_money;
	}
	public String getBuy_passwd() {
		return buy_passwd;
	}
	public void setBuy_passwd(String buy_passwd) {
		this.buy_passwd = buy_passwd;
	}
	public int getPrimary_kard() {
		return primary_kard;
	}
	public void setPrimary_kard(int primary_kard) {
		this.primary_kard = primary_kard;
	}
	public Date getAppend_date() {
		return append_date;
	}
	public void setAppend_date(Date append_date) {
		this.append_date = append_date;
	}
	@Override
	public String toString() {
		return "AccountDTO [cno=" + cno + ", userid=" + userid + ", username=" + username + ", account_bank="
				+ account_bank + ", account_passwd=" + account_passwd + ", account_number=" + account_number
				+ ", account_money=" + account_money + ", buy_passwd=" + buy_passwd + ", primary_kard=" + primary_kard
				+ ", append_date=" + append_date + "]";
	}

	
}
