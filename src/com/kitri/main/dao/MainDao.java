package com.kitri.main.dao;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.kitri.dto.Lesson;

public interface MainDao {
	public Lesson selectLessonByNo(String no,String les_kind, String les_price);
	public JsonArray lessonMaker();
}
