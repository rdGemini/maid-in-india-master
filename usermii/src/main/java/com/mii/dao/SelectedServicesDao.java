package com.mii.dao;

import java.util.List;

import com.mii.model.Booking;
import com.mii.model.SelectedServices;

public interface SelectedServicesDao extends GenericDAO<SelectedServices> {

	List<SelectedServices> getDetails(long bookingId);

	SelectedServices getAmount(long bookingId);

}
