package com.kitri.dto;

import java.util.Date;

public class Sales {
	private String sale_no;
	private int sale_price;
	private Date sale_date;
	private String pay_no;
	
	public Sales() {
	}

	public String getSale_no() {
		return sale_no;
	}

	public void setSale_no(String sale_no) {
		this.sale_no = sale_no;
	}

	public int getSale_price() {
		return sale_price;
	}

	public void setSale_price(int sale_price) {
		this.sale_price = sale_price;
	}

	public Date getSale_date() {
		return sale_date;
	}

	public void setSale_date(Date sale_date) {
		this.sale_date = sale_date;
	}

	public String getPay_no() {
		return pay_no;
	}

	public void setPay_no(String pay_no) {
		this.pay_no = pay_no;
	}

	@Override
	public String toString() {
		return "Sales [sale_no=" + sale_no + ", sale_price=" + sale_price + ", sale_date=" + sale_date + ", pay_no="
				+ pay_no + "]";
	}
	
}
