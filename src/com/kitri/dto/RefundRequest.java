package com.kitri.dto;

import java.util.Date;

public class RefundRequest {
	private String pay_no;
	private Date request_date;
	private String refd_detail;
	private int refd_price;
	private String refd_ckeck;
	
	public RefundRequest() {
	}

	public String getPay_no() {
		return pay_no;
	}

	public void setPay_no(String pay_no) {
		this.pay_no = pay_no;
	}

	public Date getRequest_date() {
		return request_date;
	}

	public void setRequest_date(Date request_date) {
		this.request_date = request_date;
	}

	public String getRefd_detail() {
		return refd_detail;
	}

	public void setRefd_detail(String refd_detail) {
		this.refd_detail = refd_detail;
	}

	public int getRefd_price() {
		return refd_price;
	}

	public void setRefd_price(int refd_price) {
		this.refd_price = refd_price;
	}

	public String getRefd_ckeck() {
		return refd_ckeck;
	}

	public void setRefd_ckeck(String refd_ckeck) {
		this.refd_ckeck = refd_ckeck;
	}

	@Override
	public String toString() {
		return "RefundRequest [pay_no=" + pay_no + ", request_date=" + request_date + ", refd_detail=" + refd_detail
				+ ", refd_price=" + refd_price + ", refd_ckeck=" + refd_ckeck + "]";
	}
	
}
