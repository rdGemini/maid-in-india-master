package com.mii.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.mii.dao.UserDao;
import com.mii.model.User;

@Repository("userDao")
public class UserDaoImpl extends GenericDaoImpl<User> implements UserDao{

	@Override
	public User loginCheck(User user) {
		String query = "FROM User where isDeleted=0 and emailId='"+user.getEmailId()+"' and password='"+user.getPassword()+"'";
		List<User> list = super.getByQuery(query);
		if(list.size()==0)
			return null;
		return list.get(0);
	}

	@Override
	public int emailCheck(User user) {
		String query = "FROM User where emailId='"+user.getEmailId()+"'";
		List<User> list = super.getByQuery(query);
		return list.size();
	}
	
	@Override
	public User forgotpassword(User user) {
		Criteria criteria = getSession().createCriteria(User.class);
		criteria.add(Restrictions.eq("emailId", user.getEmailId()));
		User us = (User) criteria.uniqueResult();
		return us;
	}

	@Override
	public int emailCheck(String emailId) {
		String query = "FROM User where emailId='"+emailId+"'";
		List<User> list = super.getByQuery(query);
		return list.size();
	}
}
