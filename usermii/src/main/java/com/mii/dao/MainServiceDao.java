package com.mii.dao;

import java.util.List;

import com.mii.model.Feedback;
import com.mii.model.MainService;

public interface MainServiceDao extends GenericDAO<MainService>{

	List<MainService> getActive();

}
