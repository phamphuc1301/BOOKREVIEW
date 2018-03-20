package com.fsoft.entities;

import java.io.Serializable;

import javax.persistence.*;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

/**
 * The persistent class for the Users database table.
 * 
 */
@Entity
@Table(name = "Users")
@NamedQuery(name = "User.findAll", query = "SELECT u FROM User u")
public class User implements Serializable, HttpSessionBindingListener {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private int userId;

	private String email;

	private short enabled;

	private String password;

	@Column(name = "user_name")
	private String userName;

	public User() {
	}

	public User(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;

	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public short getEnabled() {
		return this.enabled;
	}

	public void setEnabled(short enabled) {
		this.enabled = enabled;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public void valueBound(HttpSessionBindingEvent event) {
		User user = (User) event.getValue();
		System.out.println("User set to session: " + user.userName);
	}

	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
		User user = (User) event.getValue();
		System.out.println("User removed from session: " + user.userName);
	}

}