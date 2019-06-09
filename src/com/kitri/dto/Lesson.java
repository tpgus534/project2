package com.kitri.dto;

import java.util.Date;
import java.util.List;

public class Lesson {
	private String les_no;
	private String les_title;
	private String les_address;
	private String les_status;
	private int les_max;
	private String les_kind;
	private Date les_registerDate;
	private Date les_startDate;
	private Date les_endDate;
	private int les_price;
	private String tea_id;
	private int cat_no;

	private LessonDetail lessonDetail;
	private List<Reply> reply;
	private List<LessonIntersector> lessonIntersector;
	private List<Complain> complain;
	private List<Singo> singo;
	
	public Lesson() {
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

	public String getLes_address() {
		return les_address;
	}

	public void setLes_address(String les_address) {
		this.les_address = les_address;
	}

	public String getLes_status() {
		return les_status;
	}

	public void setLes_status(String les_status) {
		this.les_status = les_status;
	}

	public int getLes_max() {
		return les_max;
	}

	public void setLes_max(int les_max) {
		this.les_max = les_max;
	}

	public String getLes_kind() {
		return les_kind;
	}

	public void setLes_kind(String les_kind) {
		this.les_kind = les_kind;
	}

	public Date getLes_registerDate() {
		return les_registerDate;
	}

	public void setLes_registerDate(Date les_registerDate) {
		this.les_registerDate = les_registerDate;
	}

	public Date getLes_startDate() {
		return les_startDate;
	}

	public void setLes_startDate(Date les_startDate) {
		this.les_startDate = les_startDate;
	}

	public Date getLes_endDate() {
		return les_endDate;
	}

	public void setLes_endDate(Date les_endDate) {
		this.les_endDate = les_endDate;
	}

	public int getLes_price() {
		return les_price;
	}

	public void setLes_price(int les_price) {
		this.les_price = les_price;
	}

	public String getTea_id() {
		return tea_id;
	}

	public void setTea_id(String tea_id) {
		this.tea_id = tea_id;
	}

	public int getCat_no() {
		return cat_no;
	}

	public void setCat_no(int cat_no) {
		this.cat_no = cat_no;
	}

	public LessonDetail getLessonDetail() {
		return lessonDetail;
	}

	public void setLessonDetail(LessonDetail lessonDetail) {
		this.lessonDetail = lessonDetail;
	}

	public List<Reply> getReply() {
		return reply;
	}

	public void setReply(List<Reply> reply) {
		this.reply = reply;
	}

	public List<LessonIntersector> getLessonIntersector() {
		return lessonIntersector;
	}

	public void setLessonIntersector(List<LessonIntersector> lessonIntersector) {
		this.lessonIntersector = lessonIntersector;
	}

	public List<Complain> getComplain() {
		return complain;
	}

	public void setComplain(List<Complain> complain) {
		this.complain = complain;
	}

	public List<Singo> getSingo() {
		return singo;
	}

	public void setSingo(List<Singo> singo) {
		this.singo = singo;
	}

	@Override
	public String toString() {
		return "Lesson [les_no=" + les_no + ", les_title=" + les_title + ", les_address=" + les_address
				+ ", les_status=" + les_status + ", les_max=" + les_max + ", les_kind=" + les_kind
				+ ", les_registerDate=" + les_registerDate + ", les_startDate=" + les_startDate + ", les_endDate="
				+ les_endDate + ", les_price=" + les_price + ", tea_id=" + tea_id + ", cat_no=" + cat_no
				+ ", lessonDetail=" + lessonDetail + ", reply=" + reply + ", lessonIntersector=" + lessonIntersector
				+ ", complain=" + complain + ", singo=" + singo + "]";
	}
	
}
