package com.mii.dao;

import java.util.List;

import com.mii.model.Area;

public interface AreaDao extends GenericDAO<Area>{

	List<Area> getActive();

	Area getFullObjById(int id);

	List<Area> getAllAreasByCityId(int cityId);
}
