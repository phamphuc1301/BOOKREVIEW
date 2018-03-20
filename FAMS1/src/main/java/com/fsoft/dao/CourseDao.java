package com.fsoft.dao;

import java.util.List;

import com.fsoft.entities.Course;

public interface CourseDao {
	String add(Course course) throws Exception;
	List<Course> findAll() throws Exception;
	
	Course findOne(String courseCode) throws Exception;
}
