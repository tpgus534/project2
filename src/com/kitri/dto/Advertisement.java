package com.kitri.dto;

import java.util.Date;

public class Advertisement {
	private String ad_no;
	private String ad_title;
	private String ad_description;
	private String ad_url;
	private String ad_imgpath;
	private Date registerdate;
	private String ado_id;
	
	public Advertisement() {
	}

	public String getAd_no() {
		return ad_no;
	}

	public void setAd_no(String ad_no) {
		this.ad_no = ad_no;
	}

	public String getAd_title() {
		return ad_title;
	}

	public void setAd_title(String ad_title) {
		this.ad_title = ad_title;
	}

	public String getAd_description() {
		return ad_description;
	}

	public void setAd_description(String ad_description) {
		this.ad_description = ad_description;
	}

	public String getAd_url() {
		return ad_url;
	}

	public void setAd_url(String ad_url) {
		this.ad_url = ad_url;
	}

	public String getAd_imgpath() {
		return ad_imgpath;
	}

	public void setAd_imgpath(String ad_imgpath) {
		this.ad_imgpath = ad_imgpath;
	}

	public Date getRegisterdate() {
		return registerdate;
	}

	public void setRegisterdate(Date registerdate) {
		this.registerdate = registerdate;
	}

	public String getAdo_id() {
		return ado_id;
	}

	public void setAdo_id(String ado_id) {
		this.ado_id = ado_id;
	}

	@Override
	public String toString() {
		return "Advertisement [ad_no=" + ad_no + ", ad_title=" + ad_title + ", ad_description=" + ad_description
				+ ", ad_url=" + ad_url + ", ad_imgpath=" + ad_imgpath + ", registerdate=" + registerdate + ", ado_id="
				+ ado_id + "]";
	}
	
}
