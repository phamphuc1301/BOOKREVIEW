package com.fsoft.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.fsoft.entities.Course;
import com.fsoft.utils.Constants;
import com.fsoft.utils.HibernateUtil;

public class CourseDaoImpl implements CourseDao {

	@Override
	public String add(Course course) throws Exception {
		try {
			Session session = HibernateUtil.getSessionAndBeginTransaction();
			session.save(course);

			HibernateUtil.commitCurrentSessions();
			return Constants.SUCCESS;
		} finally {
			HibernateUtil.closeCurrentSessions();
		}
	}

	@Override
	public List<Course> findAll() throws Exception {
		Session session = null;
		try{
			session = HibernateUtil.getSessionAndBeginTransaction();
			Query query = session.getNamedQuery("findAll");
			List<Course> listOfCourse = query.list();
			return listOfCourse;
		}finally{
			HibernateUtil.closeCurrentSessions(session);
		}
	}

	@Override
	public Course findOne(String courseCode) throws Exception {
		Session session = null;
		try{
			session = HibernateUtil.getSessionAndBeginTransaction();
			Course course = (Course) session.get(Course.class, courseCode);
			
			return course;
		}finally{
			HibernateUtil.closeCurrentSessions(session);
		}
	}

}
