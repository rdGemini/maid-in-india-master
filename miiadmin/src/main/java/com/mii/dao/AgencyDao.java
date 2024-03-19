package com.mii.dao;

import java.util.List;

import com.mii.model.Agency;

public interface AgencyDao extends GenericDAO<Agency>{

	List<Agency> getActive();

	int emailCheck(Agency agency);

	int emailCheck(String emailId);

	Agency getFullObjById(int id);

}
