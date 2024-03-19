package com.mii.dao;

import java.util.List;

import com.mii.model.State;

public interface StateDao extends GenericDAO<State>{

	List<State> getActive();

}
