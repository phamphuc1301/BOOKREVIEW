package com.fsoft.models;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class User implements HttpSessionBindingListener {
	/**
	 * 
	 */
	private String userName;
	private String email;
	private String password;

	public User() {
		super();
	}

	public User(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public void valueBound(HttpSessionBindingEvent event) {
		User user = (User) event.getValue();
		System.out.println("User set to session: "+ user.email);
	}

	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
		User user = (User) event.getValue();
		System.out.println("User removed from session: "+ user.email);
	}
}
