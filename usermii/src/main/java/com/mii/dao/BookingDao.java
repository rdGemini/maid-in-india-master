package com.mii.dao;

import java.sql.Date;
import java.util.List;

import com.mii.model.Booking;
import com.mii.model.Maid;
import com.mii.model.User;

public interface BookingDao extends GenericDAO<Booking>{

	Booking getActive();

	List<Booking> getDetails();

	Booking getActiveById(int id);

	Booking getAmount(long bookingId);

	List<Maid> getMaid(Date dateOfBooking);

	Booking findMaid(Booking b);
}
