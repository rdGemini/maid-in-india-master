package com.mii.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mii.dao.BookingDao;
import com.mii.model.Booking;
import com.mii.model.SelectedServices;
import com.mii.util.DbUtility;

@Repository("bookingDao")
public class BookingDaoImpl extends GenericDaoImpl<Booking> implements BookingDao{

	@Override
	public List<Booking> getActive(long aid) {
		String q ="select b.bookingId as bookingId, b.genderPreference as genderPreference,"
				+ "b.additionalNote as additionalNote,b.dateOfBooking as dateOfBooking,"
				+ "b.noOfDays as noOfDays,b.paymentId as paymentId,b.maidId as maidId,"
				+ "b.dealId as dealId,b.userId as userId,b.startTime as startTime,"
				+ "b.duration as duration,b.amount as amount,"
				+ "CONCAT(b.address1, \",\", b.address2, \",\", a.name,\",\",c.name) AS address,"
				+ "b.bedrooms as bedrooms, b.members as members,"
				+ "c.cityId as cityId, b.areaId as areaId,"
				+ "u.name as uname,u.phoneNo as uMobNo, "
				+ "m.name as mname,m.profilePicture as mProPic,m.phoneNo as mMobNo "
				+ "FROM booking b "
				+ "INNER JOIN area a ON b.areaID = a.areaId"
				+ " INNER JOIN city c ON a.cityId = c.cityId"
				+ " INNER JOIN usermaster u ON b.userId = u.userId "
				+ "INNER JOIN maidmaster m ON b.maidId=m.maidId "
				//+ "INNER JOIN agencymaster ag ON ag.agencyId=m.agencyId "
				+ "WHERE u.isDeleted=0 and a.isDeleted=0  and c.isDeleted=0 and m.isDeleted=0 "
				+ "AND m.maidId="+aid;
		return DbUtility.getListData(q, Booking.class);
		//return (List<Booking>) super.getByQuery("FROM Booking");
	}

	@Override
	public Booking getFullObjById(int id) {
		String q ="select b.bookingId as bookingId, b.genderPreference as genderPreference,"
				+ "b.additionalNote as additionalNote,b.dateOfBooking as dateOfBooking,"
				+ "b.noOfDays as noOfDays,b.paymentId as paymentId,b.maidId as maidId,"
				+ "b.dealId as dealId,b.userId as userId,b.startTime as startTime,"
				+ "b.duration as duration,b.amount as amount,"
				+ "CONCAT(b.address1, \",\", b.address2, \",\", a.name,\",\",c.name) AS address,"
				+ "b.bedrooms as bedrooms, b.members as members,"
				+ "c.cityId as cityId, b.areaId as areaId,"
				+ "u.name as uname,u.phoneNo as uMobNo, "
				+ "m.name as mname,m.profilePicture as mProPic,m.phoneNo as mMobNo "
				+ "FROM booking b "
				+ "INNER JOIN area a ON b.areaID = a.areaId"
				+ " INNER JOIN city c ON a.cityId = c.cityId"
				+ " INNER JOIN usermaster u ON b.userId = u.userId "
				+ "INNER JOIN maidmaster m ON b.maidId=m.maidId "
				+ "WHERE u.isDeleted=0 and a.isDeleted=0  and c.isDeleted=0 and m.isDeleted=0"
				+ " AND b.bookingId="+id;
		
		return (DbUtility.getListData(q, Booking.class)).get(0);
		//return super.getById(Booking.class, id);
	}
	@Override
	public List<SelectedServices> getSelectedServicesForBooking(int id)
	{
		String q ="select s.selectedServiceId as selectedServiceId,s.bookingId as bookingId,"
				+ "s.serviceId as serviceId,se.name as name,se.charges as charges,"
				+ "b.amount as amount "
				+ "FROM selectedservices s "
				+ "INNER JOIN booking b ON b.bookingId = s.bookingId "
				+ "INNER JOIN service se ON se.serviceId = s.serviceId "
				+ "WHERE b.bookingId="+id;
		return DbUtility.getListData(q, SelectedServices.class);
		
	}

}
