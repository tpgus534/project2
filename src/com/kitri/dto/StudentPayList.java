package com.kitri.dto;

import java.util.Date;

public class StudentPayList {
	private String pay_no;
	private int pay_price;
	private Date pay_date;
	private int use_point;
	private String les_no;
	private String stu_id;
	
	private RefundRequest refundRequest;
	
	public StudentPayList() {
	}

	public String getPay_no() {
		return pay_no;
	}

	public void setPay_no(String pay_no) {
		this.pay_no = pay_no;
	}

	public int getPay_price() {
		return pay_price;
	}

	public void setPay_price(int pay_price) {
		this.pay_price = pay_price;
	}

	public Date getPay_date() {
		return pay_date;
	}

	public void setPay_date(Date pay_date) {
		this.pay_date = pay_date;
	}

	public int getUse_point() {
		return use_point;
	}

	public void setUse_point(int use_point) {
		this.use_point = use_point;
	}

	public String getLes_no() {
		return les_no;
	}

	public void setLes_no(String les_no) {
		this.les_no = les_no;
	}

	public String getStu_id() {
		return stu_id;
	}

	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}

	public RefundRequest getRefundRequest() {
		return refundRequest;
	}

	public void setRefundRequest(RefundRequest refundRequest) {
		this.refundRequest = refundRequest;
	}

	@Override
	public String toString() {
		return "StudentPayList [pay_no=" + pay_no + ", pay_price=" + pay_price + ", pay_date=" + pay_date
				+ ", use_point=" + use_point + ", les_no=" + les_no + ", stu_id=" + stu_id + ", refundRequest="
				+ refundRequest + "]";
	}
	
}
