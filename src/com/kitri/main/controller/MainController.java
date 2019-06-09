package com.kitri.main.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.kitri.main.service.MainServiceImpl;

public class MainController {
	private static MainController mainController;
	static {
		mainController = new MainController();
	}
	private MainController() {
		
	}
	public static MainController getMainController() {
		return mainController;
	}
	public void viewLessonMakerAjax(HttpServletRequest request, HttpServletResponse response) {
		JsonArray array = MainServiceImpl.getMainServiceImpl().lessonMakerSearch();
		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(array);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}
	public String viewLessonSelectAjax(HttpServletRequest request, HttpServletResponse response) {
		MainServiceImpl.getMainServiceImpl().selectLessonByNo(request,response);
		String path = "/lesson.jsp";
		return path;
	}
}