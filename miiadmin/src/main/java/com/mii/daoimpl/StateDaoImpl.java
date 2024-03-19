package com.mii.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mii.dao.StateDao;
import com.mii.model.Admin;
import com.mii.model.State;


@Repository("stateDao")
public class StateDaoImpl extends GenericDaoImpl<State> implements StateDao{
	@Override
	public List<State> getActive() {
		return (List<State>) super.getByQuery("FROM State s WHERE s.isDeleted=0");
	}
	
}
