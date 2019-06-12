package com.kitri.main.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.kitri.dto.Admin;
import com.kitri.dto.Lesson;
import com.kitri.dto.LessonDetail;
import com.kitri.dto.Student;
import com.kitri.dto.Teacher;
import com.kitri.main.dao.MainDaoImpl;

public class MainServiceImpl implements MainService {
	private static MainServiceImpl mainServiceImpl;
	static {
		mainServiceImpl = new MainServiceImpl();
	}

	private MainServiceImpl() {

	}

	public static MainServiceImpl getMainServiceImpl() {
		return mainServiceImpl;
	}

	@Override
	public JsonArray lessonMakerSearch() {
		JsonArray arrayList = MainDaoImpl.getMainDaoImpl().lessonMaker();
		return arrayList;
	}

	@Override
	public void selectLessonByNo(HttpServletRequest request, HttpServletResponse response) {
		String loginId = request.getParameter("loginId");
		String no = request.getParameter("no");
		System.out.println(loginId +" " + no);
		int i = MainDaoImpl.getMainDaoImpl().buyConfirm(loginId,no);
		Lesson lesson = null;
		lesson = MainDaoImpl.getMainDaoImpl().selectLessonByNo(no);
		LessonDetail lessonDetail = null;
		lessonDetail = MainDaoImpl.getMainDaoImpl().selectLessonDetailByNo(no);
		int likelist = 0;
		likelist = MainDaoImpl.getMainDaoImpl().countLikeByNo(no);
		request.setAttribute("lesson", lesson);
		request.setAttribute("lessonDetail", lessonDetail);
		request.setAttribute("likeList", likelist);
		request.setAttribute("buyConfirm", i);

	}

	public void selectLessonByNos(HttpServletRequest request, HttpServletResponse response) {
		List<Lesson> list = new ArrayList<Lesson>();
		String[] no = request.getParameterValues("arr");
		String les_kind = request.getParameter("les_kind");
		String les_price = request.getParameter("les_price");
		for (int i = 0; i < no.length; i++) {
			Lesson lesson = MainDaoImpl.getMainDaoImpl().selectLessonByNos(no[i], les_kind, les_price);
			if (lesson != null) {
				list.add(lesson);
			}
		}
		request.setAttribute("selectlesson", list);
	}

	public void countLikeByNo(HttpServletRequest request, HttpServletResponse response) {
		String no = request.getParameter("no");
		int likelist = 0;
		likelist = MainDaoImpl.getMainDaoImpl().countLikeByNo(no);
		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(likelist);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void insertLikeList(HttpServletRequest request, HttpServletResponse response) {
		String no = request.getParameter("no");
		String stu_id = request.getParameter("stu_id");
		MainDaoImpl.getMainDaoImpl().insertLikeList(no, stu_id);

	}

	public void deleteLikeList(HttpServletRequest request, HttpServletResponse response) {
		String no = request.getParameter("no");
		String stu_id = request.getParameter("stu_id");
		MainDaoImpl.getMainDaoImpl().deleteLikeList(no, stu_id);

	}

	public void findLikeList(HttpServletRequest request, HttpServletResponse response) {
		String no = request.getParameter("no");
		String stu_id = request.getParameter("stu_id");
		int a = MainDaoImpl.getMainDaoImpl().findLikeList(no, stu_id);
		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(a);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void viewLoginInfo(HttpServletRequest request, HttpServletResponse response) {
		String loginId = request.getParameter("loginId");
		String loginClass = request.getParameter("loginClass");
		switch (loginClass) {
		case "t":
			Teacher teacher = MainDaoImpl.getMainDaoImpl().selectTeacherById(loginId);
			request.setAttribute("user", teacher);
			request.setAttribute("loginClass", "t");
			break;
		case "s":
			Student student = MainDaoImpl.getMainDaoImpl().selectStudentById(loginId);
			request.setAttribute("user", student);
			request.setAttribute("loginClass", "s");
			break;
		case "a":
			Admin admin = MainDaoImpl.getMainDaoImpl().selectAdminById(loginId);
			request.setAttribute("user", admin);
			request.setAttribute("loginClass", "a");
			break;
		case "" :
			request.setAttribute("loginClass", "");
			break;
		}
	}

	public void buyConfirm(HttpServletRequest request, HttpServletResponse response) {
		String loginId = request.getParameter("loginId");
		String les_no = request.getParameter("no");
		System.out.println(loginId +" " + les_no);
		int i = MainDaoImpl.getMainDaoImpl().buyConfirm(loginId,les_no);
		request.setAttribute("buyConfirm", i);
	}

}
