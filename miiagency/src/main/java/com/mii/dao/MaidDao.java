package com.mii.dao;

import java.util.List;

import com.mii.model.Maid;

public interface MaidDao extends GenericDAO<Maid>{

	List<Maid> getActive(long l);

	int emailCheck(Maid maid);

	int emailCheck(String emailId);

	Maid getFullObjById(int id);

}
