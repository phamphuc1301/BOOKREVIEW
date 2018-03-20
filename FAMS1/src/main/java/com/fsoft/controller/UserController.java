package com.fsoft.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.fsoft.dao.UserDao;
import com.fsoft.dao.UserDaoImpl;
import com.fsoft.entities.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(UserController.class);

	@Override
	public void init(ServletConfig config) throws ServletException {
	}
	/**
	 * Use Hibernate
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PropertyConfigurator.configure(UserController.class.getResourceAsStream("/log4jFILE.properties"));

		String userName, password;
		UserDao userDao = new UserDaoImpl();
		userName = request.getParameter("userName");
		password = request.getParameter("password");

		User user = new User(userName, password);

		User result = null;
		RequestDispatcher rDispatcher = null;
		HttpSession session = null;

		try {
			logger.info("starting...");
			result = userDao.login(user);

			logger.info(result);

			if (result != null) {
				session = request.getSession();

				session.setAttribute("user", user);
//				session.setMaxInactiveInterval(60);

				rDispatcher = request.getRequestDispatcher("views/index.jsp");
				rDispatcher.forward(request, response);
			} else {
				rDispatcher = request.getRequestDispatcher("views/sign_in.jsp");
				rDispatcher.forward(request, response);

			}
		} catch (Exception ex) {
			rDispatcher = request.getRequestDispatcher("views/error.jsp");
			rDispatcher.forward(request, response);
		}
	}
	
	/**
	 * Use JDBC
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}
