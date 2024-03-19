package com.mii.daoimpl;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mii.dao.GenericDAO;




/**
 * The Class GenericDaoImpl.
 *
 * @author Bijesh on Jul 24, 2017 1:09:22 AM
 * @param <T>
 *            the generic type
 */
@Repository()
public class GenericDaoImpl<T> implements GenericDAO<T> {

	/** The session factory. */
	protected static SessionFactory sessionFactory;

	/**
	 * Sets the session factory.
	 *
	 * @param sessionFactory
	 *            the new session factory
	 */
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/**
	 * Gets the session.
	 *
	 * @return the session
	 */
	//
	protected Session getSession() {
		return sessionFactory.openSession();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.saloon.dao.GenericDAO#getAll(java.lang.Class)
	 */
	public List<T> getAll(Class<T> T) {
		Session session = null;
		try {
			session = sessionFactory.openSession();
			Criteria criteria = session.createCriteria(T);
			return criteria.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return Collections.emptyList();
	}


	/*
	 * (non-Javadoc)
	 * 
	 * @see com.saloon.dao.GenericDAO#getById(java.lang.Class, int)
	 */
	public T getById(Class<T> T, long id) {
		Session session = null;
		try {
			session = getSession();
			return session.get(T, id);
		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.saloon.dao.GenericDAO#getByFieldName(java.lang.Class,
	 * java.lang.String, java.lang.Object)
	 */
	public List<T> getByFieldName(Class<T> T, String fieldName, Object value) {
		Session session = null;
		try {
			session = getSession();
			Criteria criteria = session.createCriteria(T);
			criteria.add(Restrictions.eq(fieldName, value));
			return criteria.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return Collections.emptyList();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.saloon.dao.GenericDAO#saveObject(java.lang.Object)
	 */
	public T saveObject(T objectToSave) {
		Session session = null;
		Transaction tx = null;
		try {
			session = getSession();
			tx = session.beginTransaction();
			session.save(objectToSave);
			tx.commit();
			return objectToSave;
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.saloon.dao.GenericDAO#deleteObject(java.lang.Object)
	 */
	public Boolean deleteObject(T objectToDelete) {
		Session session = null;
		Transaction tx = null;
		try {
			session = getSession();
			tx = session.beginTransaction();
			session.delete(objectToDelete);
			tx.commit();
			return true;
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {

			if (session != null && session.isOpen())
				session.close();
		}
		return false;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.saloon.dao.GenericDAO#updateObject(java.lang.Object)
	 */
	public T updateObject(T objectToUpdate) {
		Session session = null;
		Transaction tx = null;
		try {
			session = getSession();
			tx = session.beginTransaction();
			session.update(objectToUpdate);
			tx.commit();
			return objectToUpdate;
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.saloon.dao.GenericDAO#getByQuery(java.lang.String)
	 */
	public List<T> getByQuery(final String query) {
		Session session = null;
		try {
			session = getSession();
			Query queryResult = session.createQuery(query);
			return queryResult.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}

		return Collections.emptyList();
	}

	/**
	 * Gets the by query data.
	 *
	 * @param T
	 *            the t
	 * @param params
	 *            the params
	 * @return the by query data
	 */
	public List<T> getByQueryData(Class<T> T, final Map<String, Object> params) {
		Session session = null;
		try {
			session = getSession();
			Criteria criteria = session.createCriteria(T);

			if (params != null && !params.isEmpty()) {

				for (Map.Entry<String, Object> entry : params.entrySet()) {
					// criteria.add((Property.forName(entry.getKey())).eq(entry.getValue()));
					if (entry.getValue() != null)
						criteria.add(Restrictions.eq(entry.getKey(), entry.getValue()));
					else {
						criteria.add(Restrictions.isNull(entry.getKey()));
						System.out.println("null passed in criteria sucessful");
					}
				}
			}
			return criteria.list();
		} catch (HibernateException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		} finally {
			if (session != null && session.isOpen())
				session.close();

		}
		return Collections.emptyList();
	}

	/**
	 * Gets the distinct ID by query.
	 *
	 * @param T
	 *            the t
	 * @param params
	 *            the params
	 * @param distinctField
	 *            the distinct field
	 * @return the distinct ID by query
	 */
	public List<T> getDistinctIDByQuery(Class<T> T, Map<String, Object> params, String distinctField) {
		Session session = null;
		try {
			session = getSession();
			Criteria criteria = session.createCriteria(T);

			if (params != null && !params.isEmpty()) {

				for (Map.Entry<String, Object> entry : params.entrySet()) {
					System.out.println("setting param" + entry.getKey() + "   " + entry.getValue());

					// criteria.add((Property.forName(entry.getKey())).eq(entry.getValue()));
					if (entry.getKey().toString().contains("!=")) {
						String fieldName = entry.getKey().substring(0, entry.getKey().toString().indexOf("!="));
						criteria.add(Restrictions.ne(fieldName, entry.getValue()));
						System.out.println("filed=>" + fieldName);
					} else if (entry.getValue() != null) {
						criteria.add(Restrictions.eq(entry.getKey(), entry.getValue()));
					} else {
						criteria.add(Restrictions.isNull(entry.getKey()));
					}

				}
			}

			criteria.setProjection(Projections.distinct(Projections.property(distinctField)));
			return criteria.list();
		} catch (HibernateException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return Collections.emptyList();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.saloon.dao.GenericDAO#getByCriteria(org.hibernate.Criteria)
	 */
	public List<T> getByCriteria(Criteria criteria) {
		Session session = null;
		try {
			session = getSession();
			if (criteria != null) {
				return criteria.list();
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return Collections.emptyList();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.saloon.dao.GenericDAO#saveAllObjects(java.util.List)
	 */
	public List<T> saveAllObjects(List<T> objects) {
		Session session = null;
		Transaction tx = null;
		try {
			session = getSession();
			tx = session.beginTransaction();

			for (int i = 0; i < objects.size(); i++)
				session.save(objects.get(i));

			tx.commit();
			return objects;
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return Collections.emptyList();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.saloon.dao.GenericDAO#updateAllObjects(java.util.List)
	 */
	public List<T> updateAllObjects(List<T> objects) {
		Session session = null;
		Transaction tx = null;
		try {
			session = getSession();
			tx = session.beginTransaction();

			for (int i = 0; i < objects.size(); i++)
				session.update(objects.get(i));

			tx.commit();
			return objects;
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return Collections.emptyList();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.saloon.dao.GenericDAO#deleteByQuery(java.lang.String)
	 */
	public int deleteByQuery(String query) {
		Session session = null;
		Transaction tx = null;
		try {
			session = getSession();
			tx = session.beginTransaction();
			Query queryResult = session.createQuery(query);
			int count = queryResult.executeUpdate();
			tx.commit();
			return count;
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return -1;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.saloon.dao.GenericDAO#updateByQuery(java.lang.String)
	 */
	public int updateByQuery(String query) {
		Session session = null;
		Transaction tx = null;
		try {
			session = getSession();
			tx = session.beginTransaction();
			Query queryResult = session.createQuery(query);
			int count = queryResult.executeUpdate();
			tx.commit();
			return count;
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen())
				session.close();
		}
		return -1;
	}

}
