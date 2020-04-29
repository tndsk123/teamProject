package com.example.test.model.fund.dto;

import java.util.Date;

public class Fund_Board_CommentDTO {

	private int c_fno;
	private int f_bno;
	private int bno;
	private String title;
	private String content;
	private Date append_date;
	private String writer;
	public int getC_fno() {
		return c_fno;
	}
	public void setC_fno(int c_fno) {
		this.c_fno = c_fno;
	}
	public int getF_bno() {
		return f_bno;
	}
	public void setF_bno(int f_bno) {
		this.f_bno = f_bno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAppend_date() {
		return append_date;
	}
	public void setAppend_date(Date append_date) {
		this.append_date = append_date;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	@Override
	public String toString() {
		return "Fund_Board_CommentDTO [c_fno=" + c_fno + ", f_bno=" + f_bno + ", bno=" + bno + ", title=" + title
				+ ", content=" + content + ", append_date=" + append_date + ", writer=" + writer + "]";
	}

	
}
