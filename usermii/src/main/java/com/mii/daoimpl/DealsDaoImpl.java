package com.mii.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mii.dao.DealsDao;
import com.mii.dao.FeedbackDao;
import com.mii.dao.MainServiceDao;
import com.mii.model.Booking;
import com.mii.model.Deals;
import com.mii.model.Feedback;
import com.mii.model.MainService;
import com.mii.util.DbUtility;

@Repository("dealsDao")
public class DealsDaoImpl extends GenericDaoImpl<Deals> implements DealsDao{

	@Override
	public List<Deals> getActive() 
	{
		return (List<Deals>) super.getByQuery("FROM Deals a WHERE a.isDeleted=0");
	}

	@Override
	public Deals checkDeal(String dealCode) 
	{
			/*String query = "FROM Deal where code='"+dealCode+"'";
			List<Deals> list = super.getByQuery(query);
			return list.get(0);*/
		String q ="select dealId as dealId, name as name,code as code,"
				+ "discountRate as discountRate from Deal where code='"+dealCode+"'";
		List<Deals> list = (DbUtility.getListData(q, Deals.class));
		Deals d = new Deals();
		if(list.size()==0)
			d = null;
		else
			d = list.get(0);
		return d;
	}
}
