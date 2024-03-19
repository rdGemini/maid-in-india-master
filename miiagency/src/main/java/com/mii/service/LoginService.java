package com.mii.service;

import com.mii.model.Agency;

public interface LoginService {
	public Agency login(Agency admin);

	Agency forgotPassword(Agency admin);

	public Agency changePass(Agency admin);
}
