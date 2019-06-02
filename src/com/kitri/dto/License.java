package com.kitri.dto;

public class License {
	private String tea_id;
	private String lic_no;
	private String lic_name;
	private String lic_imgpath;
	private String lic_check;
	public License() {
	}
	public String getTea_id() {
		return tea_id;
	}
	public void setTea_id(String tea_id) {
		this.tea_id = tea_id;
	}
	public String getLic_no() {
		return lic_no;
	}
	public void setLic_no(String lic_no) {
		this.lic_no = lic_no;
	}
	public String getLic_name() {
		return lic_name;
	}
	public void setLic_name(String lic_name) {
		this.lic_name = lic_name;
	}
	public String getLic_imgpath() {
		return lic_imgpath;
	}
	public void setLic_imgpath(String lic_imgpath) {
		this.lic_imgpath = lic_imgpath;
	}
	public String getLic_check() {
		return lic_check;
	}
	public void setLic_check(String lic_check) {
		this.lic_check = lic_check;
	}
	@Override
	public String toString() {
		return "License [tea_id=" + tea_id + ", lic_no=" + lic_no + ", lic_name=" + lic_name + ", lic_imgpath="
				+ lic_imgpath + ", lic_check=" + lic_check + "]";
	}
	
}
