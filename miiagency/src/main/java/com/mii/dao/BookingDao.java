package com.mii.dao;

import java.util.List;

import com.mii.model.Booking;
import com.mii.model.SelectedServices;

public interface BookingDao extends GenericDAO<Booking>{
	Booking getFullObjById(int id);

	List<Booking> getActive(long aid);

	List<SelectedServices> getSelectedServicesForBooking(int id);
}
