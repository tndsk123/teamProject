package com.example.test.model.fund.dto;

import java.util.Date;

public class FundDTO {

	private int bno;//구분번호
	private String project_name;//프로젝트 이름
	private String company_name;//회사명
	private String s_division;//주식 구분(주식,채권)
	private String p_division;//프로젝트 업종구분
	private String p_detail_division;//업종 디테일
	private String manager;//프로젝트 관리자
	private String title;//타이틀(소개글)
	private String title_img;//타이틀 이미지
	private String title_img2;//타이틀 이미지2
	private String title_img3;//타이틀 이미지3
	private String sub_title;//서브타이틀
	private Date start_date;//시작일자
	private Date end_date;//종료일자
	private Date append_date;//등록 일자
	private String content_point_title;
	private String content_point_img;
	private String content_point;
	private String content_business_title;
	private String content_business_img;
	private String content_business;
	private String content_detail_title;
	private String content_detail_img;
	private String content_detail;
	private int progress;//진행률
	private int unit;//주당 금액
	private int min_fund;//최소투자액
	private int max_fund;//목표액
	private int now_fund;//현재투자액
	private int limit;//한도액 이상 승인 여부
	private int viewcnt;//조회수
	private int support;//투자자수
	private int approve;//승인여부
	private int good;//좋아요 수
	private int margin;//채권일시 이익률
	private Date margin_date;//주식배당금 or 채권환급일자
	private String writer;//등록한 사람
	private int now_date;//남은 기간
	private int open_date;
	
	
	public String getP_detail_division() {
		return p_detail_division;
	}
	public void setP_detail_division(String p_detail_division) {
		this.p_detail_division = p_detail_division;
	}
	public String getTitle_img2() {
		return title_img2;
	}
	public void setTitle_img2(String title_img2) {
		this.title_img2 = title_img2;
	}
	public String getTitle_img3() {
		return title_img3;
	}
	public void setTitle_img3(String title_img3) {
		this.title_img3 = title_img3;
	}
	public String getContent_point_title() {
		return content_point_title;
	}
	public void setContent_point_title(String content_point_title) {
		this.content_point_title = content_point_title;
	}
	public String getContent_point_img() {
		return content_point_img;
	}
	public void setContent_point_img(String content_point_img) {
		this.content_point_img = content_point_img;
	}
	public String getContent_point() {
		return content_point;
	}
	public void setContent_point(String content_point) {
		this.content_point = content_point;
	}
	public String getContent_business_title() {
		return content_business_title;
	}
	public void setContent_business_title(String content_business_title) {
		this.content_business_title = content_business_title;
	}
	public String getContent_business_img() {
		return content_business_img;
	}
	public void setContent_business_img(String content_business_img) {
		this.content_business_img = content_business_img;
	}
	public String getContent_business() {
		return content_business;
	}
	public void setContent_business(String content_business) {
		this.content_business = content_business;
	}
	public String getContent_detail_title() {
		return content_detail_title;
	}
	public void setContent_detail_title(String content_detail_title) {
		this.content_detail_title = content_detail_title;
	}
	public String getContent_detail_img() {
		return content_detail_img;
	}
	public void setContent_detail_img(String content_detail_img) {
		this.content_detail_img = content_detail_img;
	}
	public String getContent_detail() {
		return content_detail;
	}
	public void setContent_detail(String content_detail) {
		this.content_detail = content_detail;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getS_division() {
		return s_division;
	}
	public void setS_division(String s_division) {
		this.s_division = s_division;
	}
	public String getP_division() {
		return p_division;
	}
	public void setP_division(String p_division) {
		this.p_division = p_division;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTitle_img() {
		return title_img;
	}
	public void setTitle_img(String title_img) {
		this.title_img = title_img;
	}
	public String getSub_title() {
		return sub_title;
	}
	public void setSub_title(String sub_title) {
		this.sub_title = sub_title;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public Date getAppend_date() {
		return append_date;
	}
	public void setAppend_date(Date append_date) {
		this.append_date = append_date;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public int getUnit() {
		return unit;
	}
	public void setUnit(int unit) {
		this.unit = unit;
	}
	public int getMin_fund() {
		return min_fund;
	}
	public void setMin_fund(int min_fund) {
		this.min_fund = min_fund;
	}
	public int getMax_fund() {
		return max_fund;
	}
	public void setMax_fund(int max_fund) {
		this.max_fund = max_fund;
	}
	public int getNow_fund() {
		return now_fund;
	}
	public void setNow_fund(int now_fund) {
		this.now_fund = now_fund;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public int getSupport() {
		return support;
	}
	public void setSupport(int support) {
		this.support = support;
	}
	public int getApprove() {
		return approve;
	}
	public void setApprove(int approve) {
		this.approve = approve;
	}
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
	public int getMargin() {
		return margin;
	}
	public void setMargin(int margin) {
		this.margin = margin;
	}
	public Date getMargin_date() {
		return margin_date;
	}
	public void setMargin_date(Date margin_date) {
		this.margin_date = margin_date;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getNow_date() {
		return now_date;
	}
	public void setNow_date(int now_date) {
		this.now_date = now_date;
	}
	public int getOpen_date() {
		return open_date;
	}
	public void setOpen_date(int open_date) {
		this.open_date = open_date;
	}
	@Override
	public String toString() {
		return "FundDTO [bno=" + bno + ", project_name=" + project_name + ", company_name=" + company_name
				+ ", s_division=" + s_division + ", p_division=" + p_division + ", p_detail_division="
				+ p_detail_division + ", manager=" + manager + ", title=" + title + ", title_img=" + title_img
				+ ", title_img2=" + title_img2 + ", title_img3=" + title_img3 + ", sub_title=" + sub_title
				+ ", start_date=" + start_date + ", end_date=" + end_date + ", append_date=" + append_date
				+ ", content_point_title=" + content_point_title + ", content_point_img=" + content_point_img
				+ ", content_point=" + content_point + ", content_business_title=" + content_business_title
				+ ", content_business_img=" + content_business_img + ", content_business=" + content_business
				+ ", content_detail_title=" + content_detail_title + ", content_detail_img=" + content_detail_img
				+ ", content_detail=" + content_detail + ", progress=" + progress + ", unit=" + unit + ", min_fund="
				+ min_fund + ", max_fund=" + max_fund + ", now_fund=" + now_fund + ", limit=" + limit + ", viewcnt="
				+ viewcnt + ", support=" + support + ", approve=" + approve + ", good=" + good + ", margin=" + margin
				+ ", margin_date=" + margin_date + ", writer=" + writer + ", now_date=" + now_date + ", open_date="
				+ open_date + "]";
	}
	
	
}
