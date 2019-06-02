package com.kitri.dto;

import java.time.LocalDateTime;
import java.util.List;

public class Student {
	private String stu_id;
	private String stu_name;
	private String stu_pwd;
	private String stu_birth;
	private String stu_gender;
	private LocalDateTime stu_joindate;
	private String stu_email;
	private String stu_emailDomain;
	private String stu_tel1;
	private String stu_tel2;
	private String stu_tel3;
	private String stu_zipcode;
	private String stu_address;
	private String stu_addressDetail;
	private int stu_point;
	private int stu_x;
	private int stu_y;
	private String stu_actck;
	
	private List<LikeList> likeList;
	private List<StudentPayList> payList; // has a 관계로 표현
	private List<LessonIntersector> intersectors;
	
	public Student() {
	}

	public String getStu_id() {
		return stu_id;
	}

	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}

	public String getStu_name() {
		return stu_name;
	}

	public void setStu_name(String stu_name) {
		this.stu_name = stu_name;
	}

	public String getStu_pwd() {
		return stu_pwd;
	}

	public void setStu_pwd(String stu_pwd) {
		this.stu_pwd = stu_pwd;
	}

	public String getStu_birth() {
		return stu_birth;
	}

	public void setStu_birth(String stu_birth) {
		this.stu_birth = stu_birth;
	}

	public String getStu_gender() {
		return stu_gender;
	}

	public void setStu_gender(String stu_gender) {
		this.stu_gender = stu_gender;
	}

	public LocalDateTime getStu_joindate() {
		return stu_joindate;
	}

	public void setStu_joindate(LocalDateTime stu_joindate) {
		this.stu_joindate = stu_joindate;
	}

	public String getStu_email() {
		return stu_email;
	}

	public void setStu_email(String stu_email) {
		this.stu_email = stu_email;
	}

	public String getStu_emailDomain() {
		return stu_emailDomain;
	}

	public void setStu_emailDomain(String stu_emailDomain) {
		this.stu_emailDomain = stu_emailDomain;
	}

	public String getStu_tel1() {
		return stu_tel1;
	}

	public void setStu_tel1(String stu_tel1) {
		this.stu_tel1 = stu_tel1;
	}

	public String getStu_tel2() {
		return stu_tel2;
	}

	public void setStu_tel2(String stu_tel2) {
		this.stu_tel2 = stu_tel2;
	}

	public String getStu_tel3() {
		return stu_tel3;
	}

	public void setStu_tel3(String stu_tel3) {
		this.stu_tel3 = stu_tel3;
	}

	public String getStu_zipcode() {
		return stu_zipcode;
	}

	public void setStu_zipcode(String stu_zipcode) {
		this.stu_zipcode = stu_zipcode;
	}

	public String getStu_address() {
		return stu_address;
	}

	public void setStu_address(String stu_address) {
		this.stu_address = stu_address;
	}

	public String getStu_addressDetail() {
		return stu_addressDetail;
	}

	public void setStu_addressDetail(String stu_addressDetail) {
		this.stu_addressDetail = stu_addressDetail;
	}

	public int getStu_point() {
		return stu_point;
	}

	public void setStu_point(int stu_point) {
		this.stu_point = stu_point;
	}

	public int getStu_x() {
		return stu_x;
	}

	public void setStu_x(int stu_x) {
		this.stu_x = stu_x;
	}

	public int getStu_y() {
		return stu_y;
	}

	public void setStu_y(int stu_y) {
		this.stu_y = stu_y;
	}

	public String getStu_actck() {
		return stu_actck;
	}

	public void setStu_actck(String stu_actck) {
		this.stu_actck = stu_actck;
	}

	public List<LikeList> getLikeList() {
		return likeList;
	}

	public void setLikeList(List<LikeList> likeList) {
		this.likeList = likeList;
	}

	public List<StudentPayList> getPayList() {
		return payList;
	}

	public void setPayList(List<StudentPayList> payList) {
		this.payList = payList;
	}

	public List<LessonIntersector> getIntersectors() {
		return intersectors;
	}

	public void setIntersectors(List<LessonIntersector> intersectors) {
		this.intersectors = intersectors;
	}

	@Override
	public String toString() {
		return "Student [stu_id=" + stu_id + ", stu_name=" + stu_name + ", stu_pwd=" + stu_pwd + ", stu_birth="
				+ stu_birth + ", stu_gender=" + stu_gender + ", stu_joindate=" + stu_joindate + ", stu_email="
				+ stu_email + ", stu_emailDomain=" + stu_emailDomain + ", stu_tel1=" + stu_tel1 + ", stu_tel2="
				+ stu_tel2 + ", stu_tel3=" + stu_tel3 + ", stu_zipcode=" + stu_zipcode + ", stu_address=" + stu_address
				+ ", stu_addressDetail=" + stu_addressDetail + ", stu_point=" + stu_point + ", stu_x=" + stu_x
				+ ", stu_y=" + stu_y + ", stu_actck=" + stu_actck + ", likeList=" + likeList + ", payList=" + payList
				+ ", intersectors=" + intersectors + "]";
	}
	
}
