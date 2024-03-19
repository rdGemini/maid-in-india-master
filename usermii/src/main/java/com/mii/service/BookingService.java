package com.mii.service;

import java.util.List;

import org.springframework.ui.Model;

import com.mii.model.Booking;

public interface BookingService {

	Booking add(Booking booking, long maidId);

	Booking getDetails();

	List<Booking> getAll();

	Booking getDetailsById(int id);

	double checkCode(String dealCode);

	Booking findMaid(Booking b);

}
