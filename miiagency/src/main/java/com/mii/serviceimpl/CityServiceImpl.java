package com.mii.serviceimpl;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mii.dao.CityDao;
import com.mii.model.Agency;
import com.mii.model.City;
import com.mii.service.CityService;

@Service("cityService")
@Transactional
@SessionAttributes("agency")
public class CityServiceImpl implements CityService {

	@Autowired
	CityDao cityDao;

	@Autowired
	HttpSession session;
	

	@Override
	public City addCity(City city) {
		Agency a = (Agency) session.getAttribute("agency");
		city.setCreatedBy(a.getAgencyId());
		city.setCreatedDate(new Date(System.currentTimeMillis()));
		city.setModifiedBy(a.getAgencyId());
		city.setModifiedDate(new Date(System.currentTimeMillis()));
		return cityDao.saveObject(city);
	}

	@Override
	public City getById(int id) {
		return cityDao.getById(City.class, id);
	}

	@Override
	public City updateCity(City city) {
		Agency a = (Agency) session.getAttribute("agency");
		city.setModifiedBy(a.getAgencyId());
		city.setModifiedDate(new Date(System.currentTimeMillis()));
		return cityDao.updateObject(city);
	}

	@Override
	public List<City> getAll() {
		return cityDao.getActive();
	}
	
	@Override
	public City deleteCity(int id) {
		City city = cityDao.getById(City.class, id);
		city.setIsDeleted(1);
		return cityDao.updateObject(city);
	}

	@Override
	public List<City> getAllCitiesByStateId(int stateId) {
		return cityDao.getAllCitiesByStateId(stateId);
	}
	
	
}
