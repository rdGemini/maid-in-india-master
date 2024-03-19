package com.mii.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mii.dao.AgencyDao;
import com.mii.model.Admin;
import com.mii.model.Agency;
import com.mii.util.DbUtility;

@Repository("agencyDao")
public class AgencyDaoImpl extends GenericDaoImpl<Agency> implements AgencyDao{

	@Override
	public List<Agency> getActive() {
		
		List<Agency> list = DbUtility.getListData("select a.agencyId as agencyId,a.emailId as emailId,"
				+ "a.name as name,a.password as password,a.address1 as address1,a.address2 as address2,"
				+ "a.phoneNo as phoneNo,a.certificate as certificate,"
				+ "a.bankName as bankName,a.ifsc as ifsc,a.accNo as accNo,a.branchName as branchName,"
				+ "a.areaId as areaId,"
				+ "a.createdBy as createdBy,a.modifiedBy as modifiedBy ,ar.cityId as cityId "
				+ " FROM agencymaster a "
				+ "INNER JOIN area ar ON a.areaId = ar.areaId "
				+ "WHERE a.isDeleted=0 and ar.isDeleted=0", Agency.class);
		return list;
		//return (List<Agency>) super.getByQuery("FROM Agency a WHERE a.isDeleted=0");
	}
	@Override
	public int emailCheck(Agency agency) {
		String query = "FROM Agency where emailId='"+agency.getEmailId()+"'";
		List<Agency> list = super.getByQuery(query);
		return list.size();
	}
	@Override
	public int emailCheck(String emailId) {
		String query = "FROM Agency where emailId='"+emailId+"' and isDeleted=0";
		List<Agency> list = super.getByQuery(query);
		return list.size();
	}
	@Override
	public Agency getFullObjById(int id) {
		Agency a = (DbUtility.getListData("select a.agencyId as agencyId,a.emailId as emailId,"
				+ "a.name as name,a.password as password,a.address1 as address1,a.address2 as address2,"
				+ "a.phoneNo as phoneNo,a.certificate as certificate,"
				+ "a.bankName as bankName,a.ifsc as ifsc,a.accNo as accNo,a.branchName as branchName,"
				+ "a.areaId as areaId,"
				+ "a.createdBy as createdBy,a.modifiedBy as modifiedBy ,ar.cityId as cityId "
				+ " FROM agencymaster a "
				+ "INNER JOIN area ar ON a.areaId = ar.areaId "
				+ "WHERE a.isDeleted=0 and ar.isDeleted=0"
				+ " AND a.agencyId="+id, Agency.class)).get(0);
		return a;
	}
	
}
