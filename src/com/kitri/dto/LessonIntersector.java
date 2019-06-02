package com.kitri.dto;

import java.util.Date;

public class LessonIntersector {
	private String les_no;
	private String stu_id;
	private Date les_join;
	
	public LessonIntersector() {
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

	public Date getLes_join() {
		return les_join;
	}

	public void setLes_join(Date les_join) {
		this.les_join = les_join;
	}

	@Override
	public String toString() {
		return "LessonIntersector [les_no=" + les_no + ", stu_id=" + stu_id + ", les_join=" + les_join + "]";
	}
	
}
