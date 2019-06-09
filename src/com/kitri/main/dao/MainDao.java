package com.kitri.main.dao;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.kitri.dto.Lesson;
import com.kitri.dto.LessonDetail;

public interface MainDao {
	public Lesson selectLessonByNo(String no);
	public Lesson selectLessonByNos(String no,String les_kind, String les_price);
	public JsonArray lessonMaker();
	public LessonDetail selectLessonDetailByNo(String no);
	public int countLikeByNo(String no);
}
