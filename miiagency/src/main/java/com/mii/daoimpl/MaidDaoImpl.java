package com.mii.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mii.dao.MaidDao;
import com.mii.model.Agency;
import com.mii.model.Maid;
import com.mii.util.DbUtility;

@Repository("maidDao")
public class MaidDaoImpl extends GenericDaoImpl<Maid> implements MaidDao{

	@Override
	public List<Maid> getActive(long aid) {
		List<Maid> list = DbUtility.getListData("select a.maidId as maidId,a.emailId as emailId,"
				+ "a.name as name,a.password as password,a.address1 as address1,a.address2 as address2,"
				+ "a.phoneNo as phoneNo,a.gender as gender,a.agencyId as agencyId,a.DOB as DOB,"
				+ "a.profilePicture as profilePicture,a.idProof as idProof,a.backgroundCheck as backgroundCheck,"
				+ "a.bankName as bankName,a.ifsc as ifsc,a.accNo as accNo,a.branchName as branchName,"
				+ "a.areaId as areaId,a.rating as rating,a.availability as availability,"
				+ "a.starttime as starttime,a.endtime as endtime,"
				+ "a.mainServiceId as mainServiceId,"
				+ "a.createdBy as createdBy,a.modifiedBy as modifiedBy ,ar.cityId as cityId "
				+ " FROM maidmaster a "
				+ "INNER JOIN area ar ON a.areaId = ar.areaId "
				+ "INNER JOIN mainservice m ON a.mainServiceId = m.mainServiceId "
				+ "WHERE a.isDeleted=0 and ar.isDeleted=0 and a.agencyId = "+aid, Maid.class);
		return list;	}

	@Override
	public int emailCheck(Maid maid) {
		String query = "FROM Maid where emailId='"+maid.getEmailId()+"'";
		List<Maid> list = super.getByQuery(query);
		return list.size();
	}
	@Override
	public int emailCheck(String emailId) {
		String query = "FROM Maid where emailId='"+emailId+"' and isDeleted=0";
		List<Maid> list = super.getByQuery(query);
		return list.size();
	}
	@Override
	public Maid getFullObjById(int id) {
		Maid m =(DbUtility.getListData("select a.maidId as maidId,a.emailId as emailId,"
				+ "a.name as name,a.password as password,a.address1 as address1,a.address2 as address2,"
				+ "a.phoneNo as phoneNo,a.gender as gender,a.agencyId as agencyId,a.DOB as DOB,"
				+ "a.profilePicture as profilePicture,a.idProof as idProof,a.backgroundCheck as backgroundCheck,"
				+ "a.bankName as bankName,a.ifsc as ifsc,a.accNo as accNo,a.branchName as branchName,"
				+ "a.areaId as areaId,a.rating as rating,a.availability as availability,"
				+ "a.starttime as starttime,a.endtime as endtime,"
				+ "a.mainServiceId as mainServiceId,"
				+ "a.createdBy as createdBy,a.modifiedBy as modifiedBy,ar.cityId as cityId "
				+ " FROM maidmaster a "
				+ "INNER JOIN area ar ON a.areaId = ar.areaId "
				+ "INNER JOIN mainservice m ON a.mainServiceId = m.mainServiceId "
				+ "WHERE a.isDeleted=0 and ar.isDeleted=0"
				+ " AND a.maidId="+id, Maid.class)).get(0);
		return m;
	}
}
