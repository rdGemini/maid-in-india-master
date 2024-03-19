package com.mii.dao;

import java.util.List;

import com.mii.model.User;

public interface UserDao extends GenericDAO<User>{

	List<User> getActive();

	User getFullObjById(int id);

}
