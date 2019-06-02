package com.kitri.dto;

import java.util.Date;

public class Singo {
	private String sin_no;
	private Date sin_date;
	private String sin_content;
	private String sin_check;
	private String les_no;
	
	public Singo() {
	}

	public String getSin_no() {
		return sin_no;
	}

	public void setSin_no(String sin_no) {
		this.sin_no = sin_no;
	}

	public Date getSin_date() {
		return sin_date;
	}

	public void setSin_date(Date sin_date) {
		this.sin_date = sin_date;
	}

	public String getSin_content() {
		return sin_content;
	}

	public void setSin_content(String sin_content) {
		this.sin_content = sin_content;
	}

	public String getSin_check() {
		return sin_check;
	}

	public void setSin_check(String sin_check) {
		this.sin_check = sin_check;
	}

	public String getLes_no() {
		return les_no;
	}

	public void setLes_no(String les_no) {
		this.les_no = les_no;
	}

	@Override
	public String toString() {
		return "Singo [sin_no=" + sin_no + ", sin_date=" + sin_date + ", sin_content=" + sin_content + ", sin_check="
				+ sin_check + ", les_no=" + les_no + "]";
	}
	
}
