package com.kitri.util;

import java.util.List;

public class AdminJson {
	private List<Integer> ageValues; //연령별 데이터
	private List<Integer> genderValues; //성별데이터
	private List<DateData> dateValues; //기간별 데이터
	
	public AdminJson() {
	}

	public List<Integer> getAgeValues() {
		return ageValues;
	}

	public void setAgeValues(List<Integer> ageValues) {
		this.ageValues = ageValues;
	}

	public List<Integer> getGenderValues() {
		return genderValues;
	}

	public void setGenderValues(List<Integer> genderValues) {
		this.genderValues = genderValues;
	}

	public List<DateData> getDatevalues() {
		return dateValues;
	}

	public void setDatevalues(List<DateData> datevalues) {
		this.dateValues = datevalues;
	}

	@Override
	public String toString() {
		return "AdminJson [ageValues=" + ageValues + ", genderValues=" + genderValues + ", datevalues=" + dateValues
				+ "]";
	}
//	public static void main(String[] args) {
//		Gson gson = new Gson();
//		AdminJson adminJson = new AdminJson();
//		List<DateData> dateDatas = new ArrayList<DateData>();
//		adminJson.setDatevalues(dateDatas);
//		for (int i = 0; i < 10; i++) {
//			DateData dateData = new DateData();
//			dateData.setY("2019");
//			dateData.setA(i);
//			dateDatas.add(dateData);
//		}
//		System.out.println(gson.toJson(adminJson));
//	}
}
