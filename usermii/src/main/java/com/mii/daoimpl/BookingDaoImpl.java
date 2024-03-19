package com.mii.daoimpl;

import java.sql.Date;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

import org.springframework.stereotype.Repository;

import com.mii.dao.BookingDao;
import com.mii.dao.UserDao;
import com.mii.model.Booking;
import com.mii.model.Maid;
import com.mii.model.SelectedServices;
import com.mii.model.User;
import com.mii.util.DbUtility;

@Repository("bookingDao")
public class BookingDaoImpl extends GenericDaoImpl<Booking> implements BookingDao {

	@Override
	public Booking getActive() {
		Booking b =(DbUtility.getListData("select b.bookingId as bookingId, b.bedrooms as bedrooms, b.members as members,"
				+ "b.dateOfBooking as dateOfBooking,b.startTime as startTime,"
				+ "b.noOfDays as noOfDays,b.genderPreference as genderPreference,"
				+ "b.additionalNote as additionalNote,b.amount as amount, u.phoneNo as uMobNo,"
				+ "c.cityId as cityId, b.areaId as areaId, b.maidId as maidId,b.total as total,"
				+ "m.phoneNo as mMobNo, m.emailId as mEmail, r.feedback as review, "
				+ "r.rating as rating, m.name as mname, "
				+ "CONCAT(b.address1, \",\", b.address2, \",\", a.name,\",\",c.name) AS address "
				+ "FROM booking b "
				+ "INNER JOIN area a ON b.areaID = a.areaId"
				+ " INNER JOIN city c ON a.cityId = c.cityId"
				+ " INNER JOIN usermaster u ON b.userId = u.userId"
				+ " INNER JOIN maidmaster m ON b.maidId = m.maidId"
				+ " INNER JOIN reviewmaid r ON r.maidId = m.maidId "
				+ "WHERE u.isDeleted=0 and a.isDeleted=0 and c.isDeleted=0", Booking.class)).get(0);
		return b;
	}

	@Override
	public List<Booking> getDetails() {
		//List<SelectedServices> s = DbUtility.getListData("SELECT b.bookingId as bid , b.serviceId as sid, s1.name as name, s1.charges as charges FROM selectedservices b Inner join service s1 on b.serviceId = s1.serviceId where s1.bookingId = b.bookingId", SelectedServices.class);
		//SelectedServices s1 = s.get(0);
		List<Booking> list = DbUtility.getListData("select b.bookingId as bookingId,"
				+ "b.dateOfBooking as dateOfBooking,b.status as status,m.name as mainService"
				+ " FROM booking b "
				+ "INNER JOIN selectedservices s ON s.bookingId = b.bookingId "
				+ "INNER JOIN service sr ON sr.serviceId = s.serviceId "
				+ "INNER JOIN mainservice m ON m.mainserviceId = sr.mainServiceId GROUP BY b.bookingId", Booking.class);
		return list;
	}

	@Override
	public Booking getActiveById(int id) {
		String query = "select b.bookingId as bookingId, b.bedrooms as bedrooms, b.members as members,"
				+ "b.dateOfBooking as dateOfBooking,b.startTime as startTime,b.endTime as endTime,"
				+ "b.noOfDays as noOfDays,b.genderPreference as genderPreference,"
				+ "b.additionalNote as additionalNote,b.amount as amount, u.phoneNo as uMobNo,"
				+ "c.cityId as cityId, b.areaId as areaId, b.maidId as maidId,b.total as total,"
				+ "m.phoneNo as mMobNo, m.emailId as mEmail, r.feedback as review, "
				+ "r.rating as rating, m.name as mname, "
				+ "CONCAT(b.address1, \",\", b.address2, \",\", a.name,\",\",c.name) AS address "
				+ "FROM booking b "
				+ "INNER JOIN area a ON b.areaID = a.areaId"
				+ " INNER JOIN city c ON a.cityId = c.cityId"
				+ " INNER JOIN usermaster u ON b.userId = u.userId"
				+ " INNER JOIN maidmaster m ON b.maidId = m.maidId"
				+ " LEFT JOIN reviewmaid r ON r.maidId = m.maidId "
				+ "WHERE u.isDeleted=0 and a.isDeleted=0 and c.isDeleted=0 and b.bookingId="+id;
		Booking b =(DbUtility.getListData(query, Booking.class)).get(0);
		return b;
	}

	@Override
	public Booking getAmount(long bookingId) {
		Booking m =(DbUtility.getListData("SELECT SUM(s1.charges) as amount FROM selectedservices b "
				+ "Inner join service"
				+ " s1 on b.serviceId = s1.serviceId where b.bookingId="+bookingId, Booking.class)).get(0);
		return m;
	}

	@Override
	public List<Maid> getMaid(Date dateOfBooking) {
		List<Maid> list = DbUtility.getListData("select * from maidmaster where maidId not in ("
				+ "SELECT maidId FROM booking where dateOfBooking>="+dateOfBooking+")",Maid.class);
		return list;
	}
	

	@Override
	public Booking findMaid(Booking b) {
		/*
		 
select maidId from maidmaster where maidId in 
(
select maidId from 
maidmaster 
where 
if("Male" = "No Preference",gender in ('Male', 'Female', 'Others'),gender in ('Female'))
and maidId not in
(
select m.maidId from maidmaster m
inner join booking b
on m.maidId = b.maidId  where b.dateOfBooking between '2020-06-10' and '2020-06-12'
or b.endDateOfBooking between '2020-06-10' and '2020-06-12'
or '2020-06-10' between b.dateOfBooking and b.endDateOfBooking
or '2020-06-12' between b.dateOfBooking and b.endDateOfBooking
)
)

*/
		/*SELECT bookingId, dateOfBooking, endDateOfBooking, startTime, endTime FROM booking 
		WHERE startTime BETWEEN '11:15' AND '11:30' 
		OR '11:15' BETWEEN startTime AND endTime AND
		(dateOfBooking BETWEEN '2020-06-02' AND '2020-06-10' 
		OR '2020-06-02' BETWEEN dateOfBooking AND endDateOfBooking)*/
		
		String query = "select * from maidMaster where maidId not in "
				+ "( SELECT maidId FROM booking WHERE startTime BETWEEN '"+b.getStartTime()+"' AND '"+b.getEndTime()+"' OR '"+b.getStartTime()+"' BETWEEN "
				+ "startTime AND endTime AND (dateOfBooking BETWEEN '"+b.getDateOfBooking()+"' AND '"+b.getEndDateOfBooking()+"' OR '"+b.getDateOfBooking()+"' BETWEEN "
				+ "dateOfBooking AND endDateOfBooking))";
		if(!"No Preference".equals(b.getGenderPreference()))
		{
			query += " and gender = '"+b.getGenderPreference()+"'";
		}
		Booking b1 = new Booking();
		b1=null;
		List<Booking> list = DbUtility.getListData(query, Booking.class);
		//int index = ThreadLocalRandom.current().nextInt(list.size());
		if(list.size()==0)
			return b1;
		return list.get(0);
	}

}
