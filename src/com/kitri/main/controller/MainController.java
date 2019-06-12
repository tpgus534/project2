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
		MainServiceImpl.getMainServiceImpl().selectLessonByNos(request,response);
		String path = "/main/lesson.jsp";
		return path;
	}
	public String viewLessonDetailPage(HttpServletRequest request, HttpServletResponse response) {
		MainServiceImpl.getMainServiceImpl().selectLessonByNo(request, response);
		String path = "/main/lessondetailpage.jsp";
		return path;
	}
	public void viewLikeList(HttpServletRequest request, HttpServletResponse response) {
		MainServiceImpl.getMainServiceImpl().countLikeByNo(request, response);
	}
	public void likeListInsert(HttpServletRequest request, HttpServletResponse response) {
		MainServiceImpl.getMainServiceImpl().insertLikeList(request, response);
		
	}
	public void likeListDelete(HttpServletRequest request, HttpServletResponse response) {
		MainServiceImpl.getMainServiceImpl().deleteLikeList(request, response);
		
	}
	public void fidnLikeList(HttpServletRequest request, HttpServletResponse response) {
		MainServiceImpl.getMainServiceImpl().findLikeList(request, response);
		
	}
	public String viewLoginInfo(HttpServletRequest request, HttpServletResponse response) {
		String path = "/main/loginconfirm.jsp";
		MainServiceImpl.getMainServiceImpl().viewLoginInfo(request, response);
		return path;
	}
	/*
	 * public String viewBuyButton(HttpServletRequest request, HttpServletResponse
	 * response) { String path = "/main/lessondetailpage.jsp";
	 * 
	 * return path; }
	 */
}
