package com.mii.service;

import java.util.List;

import com.mii.model.Area;
import com.mii.model.City;

public interface AreaService {

	public Area updateArea(Area area);
	public List<Area> getAll();
	Area addArea(Area area);
	Area getById(int id);
	Area deleteArea(int id);
	public List<Area> getAllAreasByCityId(int cityId);
	
}
