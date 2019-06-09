package com.kitri.main.service;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.kitri.dto.Lesson;
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
		List<Lesson> list = new ArrayList<Lesson>();
		String[] no = request.getParameterValues("arr");
		String les_kind = request.getParameter("les_kind");
		String les_price = request.getParameter("les_price");
		for (int i = 0; i < no.length; i++) {
			Lesson lesson = MainDaoImpl.getMainDaoImpl().selectLessonByNo(no[i],les_kind,les_price);
			if (lesson!=null) {
				list.add(lesson);
			}
			
		}
		request.setAttribute("selectlesson", list);
	}
}
