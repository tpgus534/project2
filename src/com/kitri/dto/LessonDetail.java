package com.kitri.dto;

public class LessonDetail {
	private String les_no;
	private String les_description;
	private String curri_info;
	private String mainimg_path;
	private int price_info;
	private String mon;
	private String tue;
	private String wed;
	private String thu;
	private String fri;
	private String sat;
	private String sun;
	
	public LessonDetail() {
	}

	public String getLes_no() {
		return les_no;
	}

	public void setLes_no(String les_no) {
		this.les_no = les_no;
	}

	public String getLes_description() {
		return les_description;
	}

	public void setLes_description(String les_description) {
		this.les_description = les_description;
	}

	public String getCurri_info() {
		return curri_info;
	}

	public void setCurri_info(String curri_info) {
		this.curri_info = curri_info;
	}

	public String getMainimg_path() {
		return mainimg_path;
	}

	public void setMainimg_path(String mainimg_path) {
		this.mainimg_path = mainimg_path;
	}

	public int getPrice_info() {
		return price_info;
	}

	public void setPrice_info(int price_info) {
		this.price_info = price_info;
	}

	public String getMon() {
		return mon;
	}

	public void setMon(String mon) {
		this.mon = mon;
	}

	public String getTue() {
		return tue;
	}

	public void setTue(String tue) {
		this.tue = tue;
	}

	public String getWed() {
		return wed;
	}

	public void setWed(String wed) {
		this.wed = wed;
	}

	public String getThu() {
		return thu;
	}

	public void setThu(String thu) {
		this.thu = thu;
	}

	public String getFri() {
		return fri;
	}

	public void setFri(String fri) {
		this.fri = fri;
	}

	public String getSat() {
		return sat;
	}

	public void setSat(String sat) {
		this.sat = sat;
	}

	public String getSun() {
		return sun;
	}

	public void setSun(String sun) {
		this.sun = sun;
	}

	@Override
	public String toString() {
		return "LessonDetail [les_no=" + les_no + ", les_description=" + les_description + ", curri_info=" + curri_info
				+ ", mainimg_path=" + mainimg_path + ", price_info=" + price_info + ", mon=" + mon + ", tue=" + tue
				+ ", wed=" + wed + ", thu=" + thu + ", fri=" + fri + ", sat=" + sat + ", sun=" + sun + "]";
	}
	
}
