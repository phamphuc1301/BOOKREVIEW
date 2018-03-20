package com.fsoft.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.fsoft.entities.User;
import com.fsoft.utils.HibernateUtil;

public class UserDaoImpl {

	public String loginuser(User user) throws Exception {
		Session session = null;
		Transaction transaction = null;
		try {
			session = HibernateUtil.getSessionFactory();
			transaction = session.beginTransaction();
			Query query = session
					.createQuery("UPDATE User SET userName = :userName WHERE id = :id ");
			query.setParameter("userName", user.getUserName());
			query.setParameter("id", user.getUserId());
			transaction.commit();
			return "SUCCESS";
		} finally {
			HibernateUtil.closeCurrentSessions(session);
		}
	}

}
