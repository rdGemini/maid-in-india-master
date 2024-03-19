package com.mii.dao;

import com.mii.model.User;

public interface UserDao extends GenericDAO<User>{

	User loginCheck(User user);

	int emailCheck(User user);

	User forgotpassword(User user);

	int emailCheck(String emailId);

}
