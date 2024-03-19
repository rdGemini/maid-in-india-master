package com.mii.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mii.dao.MainServiceDao;
import com.mii.dao.ServiceDao;
import com.mii.model.Maid;
import com.mii.model.MainService;
import com.mii.model.Service;
import com.mii.util.DbUtility;

@Repository("serviceDao")
public class ServiceDaoImpl extends GenericDaoImpl<Service> implements ServiceDao{

	@Override
	public List<Service> getActive() {
		String query = "FROM Service WHERE isDeleted=0";
		List<Service> list = super.getByQuery(query);
		return list;
	}

	@Override
	public Service getCharges(long sid) {
		String query = "FROM Service WHERE isDeleted=0 and serviceId="+sid;
		List<Service> list = super.getByQuery(query);
		return list.get(0);
	}

	@Override
	public List<Service> getAllDataByInClauseId(String serviceIds) {
		
		//String query = "select * from service where serviceId in ("+serviceIds+")";
		String query = "select serviceId as serviceId,name as name,charges "
				+ "as charges,timeTaken as timeTaken, baseForCalc, mainServiceId as mainserviceId "
				+ "from service where serviceId in ("+serviceIds+")";
		List<Service> list = DbUtility.getListData(query,Service.class);
		return list;
		
	}

}
