package com.mii.serviceimpl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mii.dao.BookingDao;
import com.mii.model.Booking;
import com.mii.model.SelectedServices;
import com.mii.service.BookingService;

@Service("bookingService")
@Transactional
public class BookingServiceImpl implements BookingService{

	@Autowired
	BookingDao bookingDao;

	@Autowired
	HttpSession session;
	
	
	@Override
	public List<Booking> getAll(long aid) {
		List<Booking> bookingList = bookingDao.getActive(aid);
		for (Booking booking : bookingList) {
			booking.setMstrno(String.valueOf(booking.getMMobNo()));
			booking.setUstrno(String.valueOf(booking.getUMobNo()));
		}
		return bookingList;
	}

	@Override
	public Booking getById(int id) {
		Booking booking = bookingDao.getFullObjById(id);
		booking.setMstrno(String.valueOf(booking.getMMobNo()));
		booking.setUstrno(String.valueOf(booking.getUMobNo()));
		return booking;
	}
	@Override
	public List<SelectedServices> getSelectedServicesForBooking(int id)
	{
		List<SelectedServices> services=bookingDao.getSelectedServicesForBooking(id);
		return services;
	}
	@Override
	public int updateBooking(Booking booking) {
		
		bookingDao.updateObject(booking);
		return 0;
	}

}
