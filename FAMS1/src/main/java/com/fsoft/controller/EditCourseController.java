package com.fsoft.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.fsoft.dao.CourseDao;
import com.fsoft.dao.CourseDaoImpl;
import com.fsoft.entities.Course;

/**
 * Servlet implementation class EditCourseController
 */
@WebServlet("/EditCourseController")
public class EditCourseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(EditCourseController.class);

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PropertyConfigurator.configure(EditCourseController.class
				.getResource("/log4jFILE.properties"));
		
		String courseCode = request.getParameter("courseCode");
		CourseDao courseDao = new CourseDaoImpl();
		try {
			Course course = courseDao.findOne(courseCode);
			request.setAttribute("course", course);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/views/pages/course_add.jsp");
			
			dispatcher.forward(request, response);

		} catch (Exception e) {
			request.setAttribute("error", "Error!");
		}

	}

}
