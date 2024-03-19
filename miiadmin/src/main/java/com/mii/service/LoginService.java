package com.mii.service;

import com.mii.model.Admin;

public interface LoginService {
	public Admin login(Admin admin);

	Admin forgotPassword(Admin admin);

	public Admin changePass(Admin admin);
}
