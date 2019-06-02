package com.kitri.dto;

import java.util.List;

public class Teacher {
	private String tea_id;
	private String tea_name;
	private String tea_pwd;
	private String tea_birth;
	private String tea_gender;
	private String tea_joindate;
	private String tea_email;
	private String tea_emaildomain;
	private String tea_tel1;
	private String tea_tel2;
	private String tea_tel3;
	private String tea_imgpath;
	private String tea_history;
	private String tea_pofol;
	private String tea_actck;
	
	private List<Lesson> lessons;
	private List<LessonAddress> lessonAddresses;
	private List<License> licenses;
	
	public Teacher() {
	}
	
	public String getTea_id() {
		return tea_id;
	}
	public void setTea_id(String tea_id) {
		this.tea_id = tea_id;
	}
	public String getTea_name() {
		return tea_name;
	}
	public void setTea_name(String tea_name) {
		this.tea_name = tea_name;
	}
	public String getTea_pwd() {
		return tea_pwd;
	}
	public void setTea_pwd(String tea_pwd) {
		this.tea_pwd = tea_pwd;
	}
	public String getTea_birth() {
		return tea_birth;
	}
	public void setTea_birth(String tea_birth) {
		this.tea_birth = tea_birth;
	}
	public String getTea_gender() {
		return tea_gender;
	}
	public void setTea_gender(String tea_gender) {
		this.tea_gender = tea_gender;
	}
	public String getTea_joindate() {
		return tea_joindate;
	}
	public void setTea_joindate(String tea_joindate) {
		this.tea_joindate = tea_joindate;
	}
	public String getTea_email() {
		return tea_email;
	}
	public void setTea_email(String tea_email) {
		this.tea_email = tea_email;
	}
	public String getTea_emaildomain() {
		return tea_emaildomain;
	}
	public void setTea_emaildomain(String tea_emaildomain) {
		this.tea_emaildomain = tea_emaildomain;
	}
	public String getTea_tel1() {
		return tea_tel1;
	}
	public void setTea_tel1(String tea_tel1) {
		this.tea_tel1 = tea_tel1;
	}
	public String getTea_tel2() {
		return tea_tel2;
	}
	public void setTea_tel2(String tea_tel2) {
		this.tea_tel2 = tea_tel2;
	}
	public String getTea_tel3() {
		return tea_tel3;
	}
	public void setTea_tel3(String tea_tel3) {
		this.tea_tel3 = tea_tel3;
	}
	public String getTea_imgpath() {
		return tea_imgpath;
	}
	public void setTea_imgpath(String tea_imgpath) {
		this.tea_imgpath = tea_imgpath;
	}
	public String getTea_history() {
		return tea_history;
	}
	public void setTea_history(String tea_history) {
		this.tea_history = tea_history;
	}
	public String getTea_pofol() {
		return tea_pofol;
	}
	public void setTea_pofol(String tea_pofol) {
		this.tea_pofol = tea_pofol;
	}
	public String getTea_actck() {
		return tea_actck;
	}
	public void setTea_actck(String tea_actck) {
		this.tea_actck = tea_actck;
	}
	public List<Lesson> getLessons() {
		return lessons;
	}
	public void setLessons(List<Lesson> lessons) {
		this.lessons = lessons;
	}
	public List<LessonAddress> getLessonAddresses() {
		return lessonAddresses;
	}
	public void setLessonAddresses(List<LessonAddress> lessonAddresses) {
		this.lessonAddresses = lessonAddresses;
	}
	public List<License> getLicenses() {
		return licenses;
	}
	public void setLicenses(List<License> licenses) {
		this.licenses = licenses;
	}
	@Override
	public String toString() {
		return "Teacher [tea_id=" + tea_id + ", tea_name=" + tea_name + ", tea_pwd=" + tea_pwd + ", tea_birth="
				+ tea_birth + ", tea_gender=" + tea_gender + ", tea_joindate=" + tea_joindate + ", tea_email="
				+ tea_email + ", tea_emaildomain=" + tea_emaildomain + ", tea_tel1=" + tea_tel1 + ", tea_tel2="
				+ tea_tel2 + ", tea_tel3=" + tea_tel3 + ", tea_imgpath=" + tea_imgpath + ", tea_history=" + tea_history
				+ ", tea_pofol=" + tea_pofol + ", tea_actck=" + tea_actck + ", lessons=" + lessons
				+ ", lessonAddresses=" + lessonAddresses + ", licenses=" + licenses + "]";
	}
	
}
