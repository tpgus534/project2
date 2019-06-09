package com.kitri.main.dao;

import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.kitri.dto.Lesson;
import com.kitri.util.DBConnection;

public class MainDaoImpl implements MainDao {
	private static MainDaoImpl mainDaoImpl;

	private MainDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	static {
		mainDaoImpl = new MainDaoImpl();
	}

	public static MainDaoImpl getMainDaoImpl() {
		return mainDaoImpl;
	}

	@Override
	public Lesson selectLessonByNo(String no, String les_kind, String les_price) {
		String sql = "SELECT LES_NO, LES_TITLE, LES_ADDRESS, LES_STATUS, LES_MAX, LES_KIND, LES_REGISTERDATE, LES_STARTDATE, LES_ENDDATE, LES_PRICE, TEA_ID, CAT_NO FROM KITRI.LESSON WHERE LES_NO = ?";
		switch (les_kind) {
		case "all":
			break;
		case "oneday":
			sql += " and les_kind = 'oneday'";
			break;
		case "every":
			sql += " and les_kind = 'every'";
			break;
		}
		switch (les_price) {
		case "1":
			sql += " and les_price < 50000";
			break;
		case "2":
			sql += " and les_price between 50000 and 100000";
			break;
		case "3":
			sql += " and les_price > 100000";
			break;
		default:
			break;
		}
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Lesson lesson = null;
		JsonObject jsonObject = new JsonObject();
		try {
			pstmt = DBConnection.makeConnection().prepareStatement(sql);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				lesson = new Lesson();
				System.out.println(rs.getString("LES_NO"));

				lesson.setCat_no(rs.getInt("CAT_NO"));
				lesson.setLes_address(rs.getString("LES_ADDRESS"));
				lesson.setLes_endDate(rs.getDate("LES_ENDDATE"));
				lesson.setLes_kind(rs.getString("LES_KIND"));
				lesson.setLes_max(rs.getInt("LES_MAX"));
				lesson.setLes_no(rs.getString("LES_NO"));
				lesson.setLes_price(rs.getInt("LES_PRICE"));
				lesson.setLes_registerDate(rs.getDate("LES_REGISTERDATE"));
				lesson.setLes_startDate(rs.getDate("LES_STARTDATE"));
				lesson.setLes_status(rs.getString("LES_STATUS"));
				lesson.setLes_title(rs.getString("LES_TITLE"));
				lesson.setTea_id(rs.getString("TEA_ID"));

//				jsonObject.addProperty("LES_NO", rs.getString("LES_NO"));
//				jsonObject.addProperty("LES_TITLE", rs.getString("LES_TITLE"));
//				jsonObject.addProperty("LES_ADDRESS", rs.getString("LES_ADDRESS"));
//				jsonObject.addProperty("LES_STATUS", rs.getString("LES_STATUS"));
//				jsonObject.addProperty("LES_MAX", rs.getString("LES_MAX"));
//				jsonObject.addProperty("LES_KIND", rs.getString("LES_KIND"));
//				jsonObject.addProperty("LES_REGISTERDATE", rs.getString("LES_REGISTERDATE"));
//				jsonObject.addProperty("LES_STARTDATE", rs.getString("LES_STARTDATE"));
//				jsonObject.addProperty("LES_ENDDATE", rs.getString("LES_ENDDATE"));
//				jsonObject.addProperty("LES_PRICE", rs.getString("LES_PRICE"));
//				jsonObject.addProperty("TEA_ID", rs.getString("TEA_ID"));
//				jsonObject.addProperty("CAT_NO", rs.getString("CAT_NO"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lesson;
	}

	@Override
	public JsonArray lessonMaker() {
		String sql = "select les_no, address_name, zipcode, address, addressdetail, les_x, les_y from lesson_address";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JsonArray arrayList = new JsonArray();
		try {
			pstmt = DBConnection.makeConnection().prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String les_no = rs.getString(1);
				String address_name = rs.getString(2);
				String zipcode = rs.getString(3);
				String address = rs.getString(4);
				String addressdetail = rs.getString(5);
				String les_x = String.valueOf(rs.getFloat(6));
				String les_y = String.valueOf(rs.getFloat(7));

				JsonObject result = new JsonObject();
				result.addProperty("les_no", les_no);
				result.addProperty("les_x", les_x);
				result.addProperty("les_y", les_y);

//				LessonAddress lessonAddress = new LessonAddress();
//				lessonAddress.setTea_id(tea_id);
//				lessonAddress.setAddress_name(address_name);
//				lessonAddress.setZipcode(zipcode);
//				lessonAddress.setAddress(addressdetail);
//				lessonAddress.setAddressdetail(addressdetail);
//				lessonAddress.setLes_x(les_x);
//				lessonAddress.setLes_y(les_y);
//				list.add(lessonAddress);
//				System.out.println(lessonAddress);
				arrayList.add(result);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arrayList;
	}

}
