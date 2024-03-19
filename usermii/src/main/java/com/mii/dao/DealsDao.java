package com.mii.dao;

import java.util.List;

import com.mii.model.Deals;
import com.mii.model.Feedback;
import com.mii.model.MainService;
import com.mii.service.DealsService;

public interface DealsDao extends GenericDAO<Deals>{

	List<Deals> getActive();

	Deals checkDeal(String dealCode);

}
