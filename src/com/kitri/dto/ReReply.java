package com.kitri.dto;

import java.util.Date;

public class ReReply {
	private String rep_no;
	private String stu_id;
	private String les_no;
	private Date rerep_date;
	private String re_content;
	
	public ReReply() {
	}

	public String getRep_no() {
		return rep_no;
	}

	public void setRep_no(String rep_no) {
		this.rep_no = rep_no;
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

	public Date getRerep_date() {
		return rerep_date;
	}

	public void setRerep_date(Date rerep_date) {
		this.rerep_date = rerep_date;
	}

	public String getRe_content() {
		return re_content;
	}

	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}

	@Override
	public String toString() {
		return "ReReply [rep_no=" + rep_no + ", stu_id=" + stu_id + ", les_no=" + les_no + ", rerep_date=" + rerep_date
				+ ", re_content=" + re_content + "]";
	}
	
}
