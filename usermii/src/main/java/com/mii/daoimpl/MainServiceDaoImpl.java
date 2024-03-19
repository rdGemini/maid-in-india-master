package com.mii.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mii.dao.FeedbackDao;
import com.mii.dao.MainServiceDao;
import com.mii.model.Feedback;
import com.mii.model.MainService;

@Repository("mainServiceDao")
public class MainServiceDaoImpl extends GenericDaoImpl<MainService> implements MainServiceDao{

	@Override
	public List<MainService> getActive() {
		return (List<MainService>) super.getByQuery("FROM MainService a WHERE a.isDeleted=0");
	}
}
