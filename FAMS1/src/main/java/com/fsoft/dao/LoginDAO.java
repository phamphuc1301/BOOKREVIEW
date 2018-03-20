package com.fsoft.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;

import com.fsoft.models.User;
import com.fsoft.utils.DBUtils;

public class LoginDAO {
	private PreparedStatement preparedStatement;

	public String loginProcessDao(User user, Connection connection)
			throws SQLException, ServletException {
		try {
			preparedStatement = connection
					.prepareStatement("SELECT * FROM dbo.Users WHERE user_name = ? AND password = ?");

			preparedStatement.setString(1, user.getUserName());
			preparedStatement.setString(2, user.getPassword());

			ResultSet rSet = preparedStatement.executeQuery();

			if (rSet.next())
				return "SUCCESS";
			else
				return "FAIL";
		} finally {
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					throw new ServletException();
				}
			if (preparedStatement != null)
				try {
					preparedStatement.close();
				} catch (SQLException e) {
					throw new ServletException();
				}
		}
	}
	public String loginProcessDao(User user)
			throws SQLException, ServletException, ClassNotFoundException, IOException {
		Connection connection = null;
		try {
			connection = DBUtils.getConnect();
			preparedStatement = connection
					.prepareStatement("SELECT * FROM dbo.Users WHERE user_name = ? AND password = ?");

			preparedStatement.setString(1, user.getUserName());
			preparedStatement.setString(2, user.getPassword());

			ResultSet rSet = preparedStatement.executeQuery();

			if (rSet.next())
				return "SUCCESS";
			else
				return "FAIL";
		} finally {
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					throw new ServletException();
				}
			if (preparedStatement != null)
				try {
					preparedStatement.close();
				} catch (SQLException e) {
					throw new ServletException();
				}
		}
	}
}
