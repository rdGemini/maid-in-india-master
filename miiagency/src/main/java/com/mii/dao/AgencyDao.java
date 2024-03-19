package com.mii.dao;

import java.util.List;

import com.mii.model.Agency;

public interface AgencyDao extends GenericDAO<Agency>{

	int emailCheck(Agency agency);

	Agency loginCheck(Agency agency);

	Agency forgotpassword(Agency agency);

	int emailCheck(String emailId);

	Agency getFullObjById(long id);

	List<Agency> getActive();

}
