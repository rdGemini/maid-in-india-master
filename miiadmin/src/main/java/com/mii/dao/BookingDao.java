package com.mii.dao;

import java.util.List;

import com.mii.model.Agency;
import com.mii.model.Booking;
import com.mii.model.SelectedServices;

public interface BookingDao extends GenericDAO<Booking>{

	List<Booking> getActive();

	Booking getFullObjById(int id);

	List<SelectedServices> getSelectedServicesForBooking(int id);

}
