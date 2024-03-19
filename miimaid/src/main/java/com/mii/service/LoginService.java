package com.mii.service;

import com.mii.model.Maid;

public interface LoginService {
	public Maid login(Maid admin);

	Maid forgotPassword(Maid admin);

	public Maid changePass(Maid admin);
}
