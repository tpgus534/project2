package com.kitri.dto;

import java.util.Date;

public class Reply {
	private String rep_no;
	private String stu_id;
	private String les_no;
	private Date rep_date;
	private Date rep_editDate;
	private String rep_content;
	
	private ReReply reply;
	
	public Reply() {
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

	public Date getRep_date() {
		return rep_date;
	}

	public void setRep_date(Date rep_date) {
		this.rep_date = rep_date;
	}

	public Date getRep_editDate() {
		return rep_editDate;
	}

	public void setRep_editDate(Date rep_editDate) {
		this.rep_editDate = rep_editDate;
	}

	public String getRep_content() {
		return rep_content;
	}

	public void setRep_content(String rep_content) {
		this.rep_content = rep_content;
	}

	public ReReply getReply() {
		return reply;
	}

	public void setReply(ReReply reply) {
		this.reply = reply;
	}

	@Override
	public String toString() {
		return "Reply [rep_no=" + rep_no + ", stu_id=" + stu_id + ", les_no=" + les_no + ", rep_date=" + rep_date
				+ ", rep_editDate=" + rep_editDate + ", rep_content=" + rep_content + ", reply=" + reply + "]";
	}
	
}
