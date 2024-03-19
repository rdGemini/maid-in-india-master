package com.mii.serviceimpl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mii.dao.FeedbackDao;
import com.mii.dao.MainServiceDao;
import com.mii.model.Feedback;
import com.mii.model.MainService;
import com.mii.service.FeedbackService;
import com.mii.service.MainServiceService;
import com.mii.util.Mailer;

@Service("mainServiceService")
@Transactional
public class MainServiceServiceImpl implements MainServiceService{

	@Autowired
	MainServiceDao mainServiceDao;
	
	@Override
	public List<MainService> getAll() 
	{
		return  (mainServiceDao.getActive());
	}


	
}
