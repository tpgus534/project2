package com.kitri.main.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;

public interface MainService {
	public JsonArray lessonMakerSearch();
	public void selectLessonByNos(HttpServletRequest request, HttpServletResponse response);
	public void selectLessonByNo(HttpServletRequest request, HttpServletResponse response);
	
}
