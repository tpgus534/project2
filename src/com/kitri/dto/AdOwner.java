package com.kitri.dto;

import java.util.Date;
import java.util.List;

public class AdOwner {
	private String ado_id;
	private String ado_company;
	private String ado_name;
	private String ado_tel1;
	private String ado_tel2;
	private String ado_tel3;
	private Date ado_registerdate;
	
	private List<Advertisement> advertisements;
	
	public AdOwner() {
	}

	public String getAdo_id() {
		return ado_id;
	}

	public void setAdo_id(String ado_id) {
		this.ado_id = ado_id;
	}

	public String getAdo_company() {
		return ado_company;
	}

	public void setAdo_company(String ado_company) {
		this.ado_company = ado_company;
	}

	public String getAdo_name() {
		return ado_name;
	}

	public void setAdo_name(String ado_name) {
		this.ado_name = ado_name;
	}

	public String getAdo_tel1() {
		return ado_tel1;
	}

	public void setAdo_tel1(String ado_tel1) {
		this.ado_tel1 = ado_tel1;
	}

	public String getAdo_tel2() {
		return ado_tel2;
	}

	public void setAdo_tel2(String ado_tel2) {
		this.ado_tel2 = ado_tel2;
	}

	public String getAdo_tel3() {
		return ado_tel3;
	}

	public void setAdo_tel3(String ado_tel3) {
		this.ado_tel3 = ado_tel3;
	}

	public Date getAdo_registerdate() {
		return ado_registerdate;
	}

	public void setAdo_registerdate(Date ado_registerdate) {
		this.ado_registerdate = ado_registerdate;
	}

	public List<Advertisement> getAdvertisements() {
		return advertisements;
	}

	public void setAdvertisements(List<Advertisement> advertisements) {
		this.advertisements = advertisements;
	}

	@Override
	public String toString() {
		return "AdOwner [ado_id=" + ado_id + ", ado_company=" + ado_company + ", ado_name=" + ado_name + ", ado_tel1="
				+ ado_tel1 + ", ado_tel2=" + ado_tel2 + ", ado_tel3=" + ado_tel3 + ", ado_registerdate="
				+ ado_registerdate + ", advertisements=" + advertisements + "]";
	}
	
}
