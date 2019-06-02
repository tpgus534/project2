package com.kitri.dto;

import java.util.Date;

public class Complain {
	private String cmpl_no;
	private String cmpl_content;
	private Date cmpl_date;
	private String cmpl_check;
	private String les_no;
	
	public Complain() {
	}

	public String getCmpl_no() {
		return cmpl_no;
	}

	public void setCmpl_no(String cmpl_no) {
		this.cmpl_no = cmpl_no;
	}

	public String getCmpl_content() {
		return cmpl_content;
	}

	public void setCmpl_content(String cmpl_content) {
		this.cmpl_content = cmpl_content;
	}

	public Date getCmpl_date() {
		return cmpl_date;
	}

	public void setCmpl_date(Date cmpl_date) {
		this.cmpl_date = cmpl_date;
	}

	public String getCmpl_check() {
		return cmpl_check;
	}

	public void setCmpl_check(String cmpl_check) {
		this.cmpl_check = cmpl_check;
	}

	public String getLes_no() {
		return les_no;
	}

	public void setLes_no(String les_no) {
		this.les_no = les_no;
	}

	@Override
	public String toString() {
		return "Complain [cmpl_no=" + cmpl_no + ", cmpl_content=" + cmpl_content + ", cmpl_date=" + cmpl_date
				+ ", cmpl_check=" + cmpl_check + ", les_no=" + les_no + "]";
	}
	
}
