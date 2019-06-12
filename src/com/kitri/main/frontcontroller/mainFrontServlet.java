package com.kitri.main.frontcontroller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitri.main.controller.MainController;
import com.kitri.util.MoveUrl;

@WebServlet("/mainfront")
public class mainFrontServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sid = request.getParameter("sid");
		String path = "/index.jsp";

		if ("lessonmaker".equals(sid)) {
			MainController.getMainController().viewLessonMakerAjax(request, response);

		} else if ("likelistinsert".equals(sid)) {
			MainController.getMainController().likeListInsert(request, response);
			MainController.getMainController().viewLikeList(request, response);
		} else if ("likelistdelete".equals(sid)) {
			MainController.getMainController().likeListDelete(request, response);
			MainController.getMainController().viewLikeList(request, response);
		} else if ("findLikeList".equals(sid)) {
			MainController.getMainController().fidnLikeList(request, response);
		} 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sid = request.getParameter("sid");
		String path = "/index.jsp";
		if ("selectlessonbyno".equals(sid)) {
			path = MainController.getMainController().viewLessonSelectAjax(request, response);
			MoveUrl.forward(request, response, path);
		} else if("selectId".equals(sid)) {
			path = MainController.getMainController().viewLoginInfo(request, response);
			MoveUrl.forward(request, response, path);
		} /*
			 * else if ("buyConfirm".equals(sid)) { path =
			 * MainController.getMainController().viewBuyButton(request, response);
			 * MoveUrl.redirect(request, response, path); }
			 */ else if ("godetail".equals(sid)) {
			path = MainController.getMainController().viewLessonDetailPage(request, response);
			MoveUrl.forward(request, response, path);
		}
	}

}
