package com.kitri.dto;

public class LessonAddress {
	private String tea_id;
	private String address_name;
	private String zipcode;
	private String address;
	private String addressdetail;
	private Float les_x;
	private Float les_y;
	
	public LessonAddress() {
	}

	public String getTea_id() {
		return tea_id;
	}

	public void setTea_id(String tea_id) {
		this.tea_id = tea_id;
	}

	public String getAddress_name() {
		return address_name;
	}

	public void setAddress_name(String address_name) {
		this.address_name = address_name;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddressdetail() {
		return addressdetail;
	}

	public void setAddressdetail(String addressdetail) {
		this.addressdetail = addressdetail;
	}

	public Float getLes_x() {
		return les_x;
	}

	public void setLes_x(Float les_x) {
		this.les_x = les_x;
	}

	public Float getLes_y() {
		return les_y;
	}

	public void setLes_y(Float les_y) {
		this.les_y = les_y;
	}

	@Override
	public String toString() {
		return "LessonAddress [tea_id=" + tea_id + ", address_name=" + address_name + ", zipcode=" + zipcode
				+ ", address=" + address + ", addressdetail=" + addressdetail + ", les_x=" + les_x + ", les_y=" + les_y
				+ "]";
	}
	
}
