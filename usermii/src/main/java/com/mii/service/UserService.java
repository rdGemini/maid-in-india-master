package com.mii.service;

import org.springframework.ui.Model;

import com.mii.model.User;

public interface UserService {

	int addUser(User user, Model model);

	User editUser(User user);

	int deleteUser(long userId);

	int checkOTP(User user);

}
