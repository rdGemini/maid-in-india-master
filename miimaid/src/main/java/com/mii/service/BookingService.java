package com.mii.service;

import java.util.List;

import com.mii.model.Booking;
import com.mii.model.SelectedServices;

public interface BookingService {

	List<Booking> getAll(long aid);

	Booking getById(int id);

	int updateBooking(Booking booking);

	List<SelectedServices> getSelectedServicesForBooking(int id);

}
