package com.mii.service;

import java.util.List;

import com.mii.model.City;
import com.mii.model.State;

public interface CityService {

	public City updateCity(City city);
	public List<City> getAll();
	City addCity(City city);
	City getById(int id);
	City deleteCity(int id);
	public List<City> getAllCitiesByStateId(int stateId);
	
}
