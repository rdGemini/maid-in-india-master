package com.mii.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mii.dao.MainServiceDao;
import com.mii.dao.ServiceDao;
import com.mii.service.MainServiceService;
import com.mii.service.ServiceService;

@Service("ServiceService")
@Transactional
public class ServiceServiceImpl  implements ServiceService{

	@Autowired
	ServiceDao serviceDao;
	
	@Override
	public List<com.mii.model.Service> getAll() 
	{
		return serviceDao.getActive();
	}

}
