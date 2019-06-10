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
	public void insertLikeList(String les_no, String stu_id);
	public void deleteLikeList(String les_no, String stu_id);
	public int findLikeList(String stu_id, String les_no);
}
