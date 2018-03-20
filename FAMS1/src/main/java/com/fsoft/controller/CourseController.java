package com.fsoft.controller;

import java.io.IOException;
import java.util.List;

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
import com.fsoft.entities.LearningPath;
import com.fsoft.utils.Constants;

/**
 * Servlet implementation class CourseController
 */
@WebServlet("/CourseController")
public class CourseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(CourseController.class);

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PropertyConfigurator.configure(CourseController.class
				.getResource("/log4jFILE.properties"));
		logger.info("Inside method!");

		String page = request.getParameter("page");
		RequestDispatcher dispatcher = null;

		if (Constants.COURSE_ADD.equalsIgnoreCase(page)) {
			dispatcher = request
					.getRequestDispatcher("/views/pages/course_add.jsp");
		} else if (Constants.COURSE_LIST.equalsIgnoreCase(page)) {
			CourseDao courseDao = new CourseDaoImpl();
			List<Course> listOfCourse;
			try {
				listOfCourse = courseDao.findAll();
//				logger.info("course learn data: "+listOfCourse.get(0).getCourselearns());
				LearningPath learningPath = listOfCourse.get(0).getCourselearns().get(0).getLearningPath();
				
				logger.info(learningPath.getTechnicName());
				
				request.setAttribute("listOfCourse", listOfCourse);

				dispatcher = request
						.getRequestDispatcher("/views/pages/course_list.jsp");

				
			} catch (Exception e) {
				request.setAttribute("message", "Error!");
				
			}
		}

		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PropertyConfigurator.configure(CourseController.class
				.getResource("/log4jFILE.properties"));
		logger.info("Inside post method!");
		String courseCode = request.getParameter("courseCode");
		String courseTitle = request.getParameter("courseTitle");
		int duration = Integer.parseInt(request.getParameter("duration"));
		String descriptions = request.getParameter("descriptions");

		Course course = new Course(courseCode, courseTitle, descriptions,
				duration);
		logger.info(course);

		CourseDao courseDao = new CourseDaoImpl();
		try {
			String result = courseDao.add(course);
			if (Constants.SUCCESS.equalsIgnoreCase(result)) {
				request.setAttribute("messageAdd", "Add a new course success!");
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("/views/pages/course_add.jsp");
				dispatcher.include(request, response);
				/*
				 * response.sendRedirect(request.getContextPath() +
				 * "/views/pages/course_add.jsp");
				 */
			}

		} catch (Exception e) {
			request.setAttribute("messageAdd", "Add a new course fail!");
		}

	}

}
