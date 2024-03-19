package com.mii.dao;

import java.util.List;

import org.hibernate.Criteria;

/**
 * The Interface GenericDAO.
 *
 * @author Bijesh on Jul 24, 2017 1:11:01 AM
 * @param <T>
 *            the generic type
 */
public interface GenericDAO<T> {


	/**
	 * Gets the all.
	 *
	 * @param T
	 *            the t
	 * @return the all
	 */
	public List<T> getAll(Class<T> T);

	/**
	 * Gets the by id.
	 *
	 * @param T
	 *            the t
	 * @param id
	 *            the id
	 * @return the by id
	 */
	public T getById(Class<T> T, long id);

	/**
	 * Gets the by field name.
	 *
	 * @param T
	 *            the t
	 * @param fieldName
	 *            the field name
	 * @param value
	 *            the value
	 * @return the by field name
	 */
	public List<T> getByFieldName(Class<T> T, String fieldName, Object value);

	/**
	 * Save object.
	 *
	 * @param objectToSave
	 *            the object to save
	 * @return the t
	 */
	public T saveObject(T objectToSave);

	/**
	 * Delete object.
	 *
	 * @param objectToDelete
	 *            the object to delete
	 * @return the boolean
	 */
	public Boolean deleteObject(T objectToDelete);

	/**
	 * Update object.
	 *
	 * @param objectToUpdate
	 *            the object to update
	 * @return the t
	 */
	public T updateObject(T objectToUpdate);

	/**
	 * Gets the by query.
	 *
	 * @param query
	 *            the query
	 * @return the by query
	 */
	public List<?> getByQuery(final String query);

	/* public List getByQueryData(Class T, final Map<T, T> params); */

	/*
	 * public List<T> getDistinctIDByQuery(Class T, Map<String, Object> params,
	 * String distinctField);
	 */

	/**
	 * Gets the by criteria.
	 *
	 * @param criteria
	 *            the criteria
	 * @return the by criteria
	 */
	public List<?> getByCriteria(Criteria criteria);

	/**
	 * Save all objects.
	 *
	 * @param objects
	 *            the objects
	 * @return the list
	 */
	public List<T> saveAllObjects(List<T> objects);

	/**
	 * Update all objects.
	 *
	 * @param objects
	 *            the objects
	 * @return the list
	 */
	public List<T> updateAllObjects(List<T> objects);

	/**
	 * Delete by query.
	 *
	 * @param query
	 *            the query
	 * @return the int
	 */
	public int deleteByQuery(String query);

	/**
	 * Update by query.
	 *
	 * @param query
	 *            the query
	 * @return the int
	 */
	public int updateByQuery(String query);

}
