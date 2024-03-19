package com.mii.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.mii.dao.UserDao;
import com.mii.model.Agency;
import com.mii.model.User;
import com.mii.util.DbUtility;

@Repository("userDao")
public class UserDaoImpl extends GenericDaoImpl<User> implements UserDao{

	@Override
	public List<User> getActive() {
			return (List<User>) super.getByQuery("FROM User a WHERE a.isDeleted=0");
	}

	@Override
	public User getFullObjById(int id) {
		User u =(DbUtility.getListData("select a.userId as userId,a.emailId as emailId,"
				+ "a.name as name,a.password as password,a.address1 as address1,a.address2 as address2,"
				+ "a.phoneNo as phoneNo,a.gender as gender,a.otp as otp,"
				+ "a.areaId as areaId,"
				+ "a.createdBy as createdBy,a.modifiedBy as modifiedBy ,ar.cityId as cityId "
				+ " FROM usermaster a "
				+ "INNER JOIN area ar ON a.areaId = ar.areaId "
				+ "WHERE a.isDeleted=0 and ar.isDeleted=0"
				+ " AND a.userId="+id, User.class)).get(0);
		return u;
	}
}
