package com.mii.serviceimpl;

import java.awt.print.Book;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mii.dao.AgencyDao;
import com.mii.dao.BookingDao;
import com.mii.model.Admin;
import com.mii.model.Agency;
import com.mii.model.Booking;
import com.mii.model.SelectedServices;
import com.mii.service.BookingService;

@Service("bookingService")
@Transactional
@SessionAttributes("admin")
public class BookingServiceImpl implements BookingService{

	@Autowired
	BookingDao bookingDao;

	@Autowired
	HttpSession session;
	
	
	@Override
	public List<Booking> getAll() {
		List<Booking> bookingList = bookingDao.getActive();
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

	/*
	 * @Override public int deleteBooking(int id) { Booking booking =
	 * bookingDao.getFullObjById(id); if(booking!=null) { booking.setIsDeleted(1);
	 * agencyDao.updateObject(agency); } return 0; }
	 */
	
}
