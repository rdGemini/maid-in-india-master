package com.mii.dao;

import java.util.List;

import com.mii.model.Admin;

public interface AdminDao extends GenericDAO<Admin> {

	public Admin loginCheck(Admin admin);

	int emailCheck(Admin admin);

	public List<Admin> getActive();

	Admin forgotpassword(Admin admin);

	public void updatepass(Admin a);

	void updatepassword(Admin admin);

	Admin changepassword(Admin admin);

	public int emailCheck(String emailId);

	public Admin getFullObjById(int id);
}
