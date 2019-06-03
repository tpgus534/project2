package com.kitri.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.kitri.dto.LessonAddress;
import com.kitri.util.DBConnection;

@WebServlet("/lessonmaker")
public class LessonMarkerSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	List<LessonAddress> list = new ArrayList<LessonAddress>();
	
	@Override
	public void init() throws ServletException {
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sql = "select tea_id, address_name, zipcode, address, addressdetail, les_x, les_y from lesson_address";
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		JSONArray arrayList = new JSONArray();
		try {
			pstmt = DBConnection.makeConnection().prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String tea_id = rs.getString(1);
				String address_name= rs.getString(2);
				String zipcode = rs.getString(3);
				String address = rs.getString(4);
				String addressdetail = rs.getString(5);
				String les_x = String.valueOf(rs.getFloat(6));
				String les_y = String.valueOf(rs.getFloat(7));
				
				JSONObject result = new JSONObject();
				result.put("tea_id", tea_id);
				result.put("les_x", les_x);
				result.put("les_y", les_y);
				
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
			
			PrintWriter out = response.getWriter();
			out.print(arrayList);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
