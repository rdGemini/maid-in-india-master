package com.mii.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mii.dao.SelectedServicesDao;
import com.mii.dao.ServiceDao;
import com.mii.model.SelectedServices;
import com.mii.model.Service;
import com.mii.model.User;
import com.mii.util.DbUtility;

@Repository("selectedServicesDao")
public class SelectedServicesDaoImpl extends GenericDaoImpl<SelectedServices> implements SelectedServicesDao{

	@Override
	public List<SelectedServices> getDetails(long bookingId) {
		List<SelectedServices> list = DbUtility.getListData("SELECT b.bookingId as bid , b.serviceId as sid, "
				+ "b.price as price, s1.name as name, s1.charges as charges FROM selectedservices b "
				+ "Inner join service s1 on b.serviceId = s1.serviceId where b.bookingId="+bookingId, SelectedServices.class);
		return list;
	}

	@Override
	public SelectedServices getAmount(long bookingId) {
		String query = "SELECT SUM(s.price) as price, "
				+ "SUM(s.time) as noOfMins, s.time as time, "
				+ "s.selectedServiceId as selectedServicesId,b1.bookingId as bookingId,s.serviceId as serviceId "
				+ "FROM selectedservices s "
				+ "INNER JOIN booking b1 on s.bookingId = b1.bookingId "
				+ "where s.bookingId="+bookingId;
		
		System.out.println("bookingId="+bookingId);
		SelectedServices m =(DbUtility.getListData(query, SelectedServices.class)).get(0);
		return m;
		//List<SelectedServices> list = DbUtility.getListData("SELECT SUM(s1.charges) as amount FROM selectedservices b Inner join service s1 on b.serviceId = s1.serviceId where b.bookingId="+bookingId, SelectedServices.class);
	}

}
