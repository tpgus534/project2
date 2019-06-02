package com.kitri.util;

public class DateData {
	private String y; //yyyy or yyyy-MM or yyyy-MM-dd
	private int a; // 값
	
	public DateData() {
	}

	public String getY() {
		return y;
	}

	public void setY(String y) {
		this.y = y;
	}

	public int getA() {
		return a;
	}

	public void setA(int a) {
		this.a = a;
	}

	@Override
	public String toString() {
		return "Date [y=" + y + ", a=" + a + "]";
	}
	
}
