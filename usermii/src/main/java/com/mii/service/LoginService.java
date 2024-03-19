package com.mii.service;

import com.mii.model.User;

public interface LoginService {

	User login(User user);

	User forgotPassword(User user);

	int checkOTP(User user);

	User newPassword(User user);

}
