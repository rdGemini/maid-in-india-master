package com.mii.serviceimpl;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mii.dao.AreaDao;
import com.mii.dao.CityDao;
import com.mii.model.Admin;
import com.mii.model.Area;
import com.mii.model.City;
import com.mii.service.AreaService;

@Service("areaService")
@Transactional
@SessionAttributes("admin")
public class AreaServiceImpl implements AreaService{

	@Autowired
	AreaDao areaDao;

	@Autowired
	HttpSession session;

	@Override
	public Area updateArea(Area area) {
		Admin ad = (Admin) session.getAttribute("admin");
		area.setModifiedBy(ad.getAdminId());
		area.setModifiedDate(new Date(System.currentTimeMillis()));
		return areaDao.updateObject(area);
	}

	@Override
	public List<Area> getAll() {
		return areaDao.getActive();
	}

	@Override
	public Area addArea(Area area) {
		Admin ad = (Admin) session.getAttribute("admin");
		area.setCreatedBy(ad.getAdminId());
		area.setCreatedDate(new Date(System.currentTimeMillis()));
		area.setModifiedBy(ad.getAdminId());
		area.setModifiedDate(new Date(System.currentTimeMillis()));
		return areaDao.saveObject(area);
	}

	@Override
	public Area getById(int id) {
		return areaDao.getFullObjById(id);//(areaDao.getActive()).get(0);
	}

	@Override
	public Area deleteArea(int id) {
		Area area = areaDao.getById(Area.class, id);
		area.setIsDeleted(1);
		return areaDao.updateObject(area);
	}

	@Override
	public List<Area> getAllAreasByCityId(int cityId) {
		return areaDao.getAllAreasByCityId(cityId);
	}
	
}
