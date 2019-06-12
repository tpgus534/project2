package com.kitri.main.dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.kitri.dto.Admin;
import com.kitri.dto.Lesson;
import com.kitri.dto.LessonDetail;
import com.kitri.dto.Student;
import com.kitri.dto.Teacher;
import com.kitri.util.DBClose;
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
	public Lesson selectLessonByNo(String no) {
		String sql = "SELECT LES_NO, LES_TITLE, LES_ADDRESS, LES_STATUS, LES_MAX, LES_KIND, LES_REGISTERDATE, LES_STARTDATE, LES_ENDDATE, LES_PRICE, TEA_ID, CAT_NO FROM KITRI.LESSON WHERE LES_NO = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Lesson lesson = null;
		JsonObject jsonObject = new JsonObject();
		try {
			conn = DBConnection.makeConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			while (rs.next()) {

				lesson = new Lesson();

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
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return lesson;
	}

	public Lesson selectLessonByNos(String no, String les_kind, String les_price) {
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
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Lesson lesson = null;
		JsonObject jsonObject = new JsonObject();
		try {
			conn = DBConnection.makeConnection();
			pstmt = conn.prepareStatement(sql);
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
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return lesson;
	}

	@Override
	public JsonArray lessonMaker() {
		String sql = "select les_no, address_name, zipcode, address, addressdetail, les_x, les_y from lesson_address";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JsonArray arrayList = new JsonArray();
		try {
			conn = DBConnection.makeConnection();
			pstmt = conn.prepareStatement(sql);
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
				arrayList.add(result);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return arrayList;
	}

	@Override
	public LessonDetail selectLessonDetailByNo(String no) {
		String sql = "SELECT \r\n" + "LES_NO, LES_DESCRIPTION, CURRI_INFO, \r\n"
				+ "   MAINIMG_PATH, PRICE_INFO, MON, \r\n" + "   TUE, WED, THU, \r\n" + "   FRI, SAT, SUN\r\n"
				+ " FROM KITRI.LESSON_DETAIL WHERE LES_NO = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LessonDetail lessonDetail = null;
		try {
			conn = DBConnection.makeConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			while (rs.next()) {

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return lessonDetail;
	}

	@Override
	public int countLikeByNo(String no) {
		String sql = "select count(*)\r\n" + "from likelist \r\n" + "where les_no = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int countLike = 0;
		try {
			conn = DBConnection.makeConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				countLike = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return countLike;
	}

	@Override
	public void insertLikeList(String les_no, String stu_id) {
		String sql = "insert into likelist(stu_id, les_no) values(?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		int a = 0;
		try {
			conn = DBConnection.makeConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stu_id);
			pstmt.setString(2, les_no);
			a = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
	}

	@Override
	public void deleteLikeList(String les_no, String stu_id) {
		String sql = "delete from likelist where les_no = ? and stu_id = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		int a = 0;
		try {
			conn = DBConnection.makeConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, les_no);
			pstmt.setString(2, stu_id);
			a = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}

	}
	@Override
	public int findLikeList(String les_no, String stu_id) {
		String sql = "select count(*) from likelist where stu_id = ? and les_no = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int countLike = 0;
		try {
			conn = DBConnection.makeConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stu_id);
			pstmt.setString(2, les_no);
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				countLike = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return countLike;
		
	}
	
	public Teacher selectTeacherById(String loginId) {
		String sql = "SELECT \r\n" + 
				"TEA_ID, TEA_NAME, TEA_PWD, \r\n" + 
				"   TEA_BIRTH, TEA_GENDER, TEA_JOINDATE, \r\n" + 
				"   TEA_EMAIL, TEA_EMAILDOMAIN, TEA_TEL1, \r\n" + 
				"   TEA_TEL2, TEA_TEL3, TEA_IMGPATH, \r\n" + 
				"   TEA_HISTORY, TEA_POFOL, TEA_ACTCK\r\n" + 
				"FROM KITRI.TEACHER where TEA_ID = ?";
		Teacher teacher = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, loginId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				teacher = new Teacher();
				teacher.setTea_id(rs.getString("TEA_ID"));
				teacher.setTea_name(rs.getString("TEA_NAME"));
				teacher.setTea_pwd(rs.getString("TEA_PWD"));
				teacher.setTea_birth(rs.getString("TEA_BIRTH"));
				teacher.setTea_gender(rs.getString("TEA_GENDER"));
				teacher.setTea_joindate(rs.getString("TEA_JOINDATE"));
				teacher.setTea_email(rs.getString("TEA_EMAIL"));
				teacher.setTea_emaildomain(rs.getString("TEA_EMAILDOMAIN"));
				teacher.setTea_tel1(rs.getString("TEA_TEL1"));
				teacher.setTea_tel2(rs.getString("TEA_TEL2"));
				teacher.setTea_tel3(rs.getString("TEA_TEL3"));
				teacher.setTea_imgpath(rs.getString("TEA_IMGPATH"));
				teacher.setTea_history(rs.getString("TEA_HISTORY"));
				teacher.setTea_pofol(rs.getString("TEA_POFOL"));
				teacher.setTea_actck(rs.getString("TEA_ACTCK"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return teacher;
		
	}

	public Student selectStudentById(String loginId) {
		String sql = "SELECT \r\n" + 
				"STU_ID, STU_NAME, STU_PWD, \r\n" + 
				"   STU_BIRTH, STU_GENDER, STU_JOINDATE, \r\n" + 
				"   STU_EMAIL, STU_EMAILDOMAIN, STU_TEL1, \r\n" + 
				"   STU_TEL2, STU_TEL3, STU_ZIPCODE, \r\n" + 
				"   STU_ADDRESS, STU_ADDRESSDETAIL, STU_POINT, \r\n" + 
				"   STU_X, STU_Y, STU_ACTCK\r\n" + 
				"FROM KITRI.STUDENT where stu_id = ?";
		Student student = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, loginId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				student = new Student();
				student.setStu_id(rs.getString("STU_ID"));
				student.setStu_name(rs.getString("STU_NAME"));
				student.setStu_pwd(rs.getString("STU_PWD"));
				student.setStu_birth(rs.getString("STU_BIRTH"));
				student.setStu_gender(rs.getString("STU_GENDER"));
				//student.setStu_joindate(rs.getString("STU_JOINDATE"));
				student.setStu_email(rs.getString("STU_EMAIL"));
				student.setStu_emailDomain(rs.getString("STU_EMAILDOMAIN"));
				student.setStu_tel1(rs.getString("STU_TEL1"));
				student.setStu_tel2(rs.getString("STU_TEL2"));
				student.setStu_tel3(rs.getString("STU_TEL3"));
				student.setStu_zipcode(rs.getString("STU_ZIPCODE"));
				student.setStu_address(rs.getString("STU_ADDRESS"));
				student.setStu_addressDetail(rs.getString("STU_ADDRESSDETAIL"));
				student.setStu_point(rs.getInt("STU_POINT"));
				student.setStu_x(rs.getInt("STU_X"));
				student.setStu_y(rs.getInt("STU_Y"));
				student.setStu_actck(rs.getString("STU_ACTCK"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return student;
		
		
	}

	public Admin selectAdminById(String loginId) {
		String sql = "SELECT \r\n" + 
				"ADMIN_ID, ADMIN_PWD\r\n" + 
				"FROM KITRI.ADMIN where admin_id = ?";
		Admin admin = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, loginId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				admin = new Admin();
				admin.setAdmin_id(rs.getString("ADMIN_ID"));
				admin.setAdmin_pwd(rs.getString("ADMIN_PWD"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return admin;
		
		
	}
	
	public int buyConfirm(String loginId, String les_no) {
		String sql = "select count(*) from lesson_intersector where stu_id = ? and les_no = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int buyConfirm = 0;
		try {
			conn = DBConnection.makeConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, loginId);
			pstmt.setString(2, les_no);
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				buyConfirm = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return buyConfirm;
	}

}
