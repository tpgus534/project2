package com.kitri.dto;

public class LikeList {
	private String stu_id;
	private String les_no;
	private String les_title;
	private String tea_name;
	
	public LikeList() {
	}

	public String getStu_id() {
		return stu_id;
	}

	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}

	public String getLes_no() {
		return les_no;
	}

	public void setLes_no(String les_no) {
		this.les_no = les_no;
	}

	public String getLes_title() {
		return les_title;
	}

	public void setLes_title(String les_title) {
		this.les_title = les_title;
	}

	public String getTea_name() {
		return tea_name;
	}

	public void setTea_name(String tea_name) {
		this.tea_name = tea_name;
	}

	@Override
	public String toString() {
		return "LikeList [stu_id=" + stu_id + ", les_no=" + les_no + ", les_title=" + les_title + ", tea_name="
				+ tea_name + "]";
	}
	
}
