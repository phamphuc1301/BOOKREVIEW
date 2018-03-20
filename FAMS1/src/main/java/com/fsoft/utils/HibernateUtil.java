/**
 * 
 */
package com.fsoft.utils;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 * @author DieuNT1
 *
 */
public class HibernateUtil {
	private static Logger logger = Logger.getLogger(HibernateUtil.class);
	private static SessionFactory sessionFactory;
	/**
	 * static block
	 */
	static {
		try {
			Configuration configuration = new Configuration();
			configuration.configure();
			ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
					.applySettings(configuration.getProperties()).build();
			sessionFactory = configuration.buildSessionFactory(serviceRegistry);

		} catch (Throwable ex) {
			logger.error("Session Factory could not be created." + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	/**
	 * 
	 * @return a Sesssion object.
	 */
	public static Session getSessionFactory() {
		return sessionFactory.getCurrentSession();
	}

	/**
	 * Start session.
	 * 
	 * @return
	 */
	public static Session getSessionAndBeginTransaction() {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		return session;
	}

	public static Session commitCurrentSessions() throws Exception {
		Session session = sessionFactory.getCurrentSession();
		if (session.isOpen()) {
			Transaction transaction = session.getTransaction();
			if (transaction.isActive()) {
				try {
					transaction.commit();
				} catch (Throwable ex) {
					return session;
				}
			}
		}
		return session;
	}

	public static void closeCurrentSessions() throws Exception {
		Session session = sessionFactory.getCurrentSession();
		if (session != null) {
			if (session.isOpen()) {
				session.close();
			}

		}
	}
	
	public static void closeCurrentSessions(Session session) throws Exception {
		if (session != null) {
			if (session.isOpen()) {
				session.close();
			}

		}
	}

}
