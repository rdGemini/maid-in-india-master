package com.mii.daoimpl;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.mii.dao.CityDao;
import com.mii.model.City;
import com.mii.util.DbUtility;

@Repository("cityDao")
public class CityDaoImpl  extends GenericDaoImpl<City> implements CityDao{

	@Override
	public List<City> getActive() {
		
		/*String query="select c.cityId as cityId,c.name as name,s.name as sname,"
				+ "c.createdBy as createdBy,c.modifiedBy as modifiedBy ,c.stateId as stateId"
				+ " FROM City c inner join "
				+ "State s ON c.stateId=s.stateId WHERE c.isDeleted=0 and s.isDeleted=0 ";*/
		String query = "SELECT cityId, name, createdBy, modifiedBy FROM City WHERE isDeleted = 0";
		return DbUtility.getListData(query, City.class);
	}

	@Override
	public List<City> getAllCitiesByStateId(int stateId) {
		String query="select c.cityId as cityId,c.name as name,s.name as sname,"
				+ "c.createdBy as createdBy,c.modifiedBy as modifiedBy ,c.stateId as stateId"
				+ " FROM City c inner join "
				+ "State s ON c.stateId=s.stateId WHERE c.isDeleted=0 and s.isDeleted=0 "
				+ "AND c.stateId ="+stateId;
		List<City> list = DbUtility.getListData(query, City.class);
		//return DbUtility.getListData(query, City.class);
		return list;
	}
}
