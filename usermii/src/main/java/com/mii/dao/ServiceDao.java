package com.mii.dao;

import java.util.List;

import com.mii.model.Booking;
import com.mii.model.Service;

public interface ServiceDao  extends GenericDAO<Service>{

	List<Service> getActive();
	
	List<Service> getAllDataByInClauseId(String serviceIds);

	Service getCharges(long sid);

}
