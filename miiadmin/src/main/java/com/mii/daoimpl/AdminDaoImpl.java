package com.mii.daoimpl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mii.dao.AdminDao;
import com.mii.model.Admin;
import com.mii.model.Area;
import com.mii.util.DbUtility;

@Repository("adminDao")
@SessionAttributes("admin")
public class AdminDaoImpl extends GenericDaoImpl<Admin> implements AdminDao {

	@Autowired
	HttpSession session;
	
	@Override
	public Admin loginCheck(Admin admin) {
		String query = "FROM Admin where isDeleted=0 and emailId='"+admin.getEmailId()+"' and password='"+admin.getPassword()+"'";
		List<Admin> list = super.getByQuery(query);
		if(list.size()==0)
			return null;
		return list.get(0);
	}
	@Override
	public int emailCheck(String emailId) {
		String query = "FROM Admin where emailId='"+emailId+"' and isDeleted=0";
		List<Admin> list = super.getByQuery(query);
		return list.size();
	}
	@Override
	public int emailCheck(Admin admin) {
		String query = "FROM Admin where emailId='"+admin.getEmailId()+"' and isDeleted=0";
		List<Admin> list = super.getByQuery(query);
		return list.size();
	}
	@Override
	public Admin forgotpassword(Admin admin) {
		String query = "FROM Admin where emailId='"+admin.getEmailId()+"' and isDeleted=0";
		return (super.getByQuery(query)).get(0);
		
		/*
		 * Criteria criteria = getSession().createCriteria(Admin.class);
		 * criteria.add(Restrictions.eq("emailId", admin.getEmailId())); Admin us =
		 * (Admin) criteria.uniqueResult(); return us;
		 */
	}
	@Override
	public Admin changepassword(Admin admin) {
		
		Admin sAdmin = (Admin) session.getAttribute("admin");
		String query = "FROM Admin where emailId='"+sAdmin.getEmailId()+"'";
		List<Admin> list = super.getByQuery(query);
		if(list.size()==0)
			return null;
		return list.get(0);
	}
	@Override
	public List<Admin> getActive() {
		List<Admin> list = DbUtility.getListData("select a.adminId as adminId,a.emailId as emailId,"
				+ "a.name as name,a.password as password,a.address1 as address1,a.address2 as address2,"
				+ "a.phoneNo as phoneNo,a.profilePicture as profilePicture,a.idProof as idProof,"
				+ "a.areaId as areaId,"
				+ "a.createdBy as createdBy,a.modifiedBy as modifiedBy ,ar.cityId as cityId "
				+ " FROM adminmaster a "
				+ "INNER JOIN area ar ON a.areaId = ar.areaId "
				+ "WHERE a.isDeleted=0 and ar.isDeleted=0", Admin.class);
		return list;
		//return (List<Admin>) super.getByQuery("FROM Admin a WHERE a.isDeleted=0");
	}
	@Override
	public Admin getFullObjById(int id) {
		Admin a= (DbUtility.getListData("select a.adminId as adminId,a.emailId as emailId,"
				+ "a.name as name,a.password as password,a.address1 as address1,a.address2 as address2,"
				+ "a.phoneNo as phoneNo,a.profilePicture as profilePicture,a.idProof as idProof,"
				+ "a.areaId as areaId,"
				+ "a.createdBy as createdBy,a.modifiedBy as modifiedBy ,ar.cityId as cityId "
				+ " FROM adminmaster a "
				+ "INNER JOIN area ar ON a.areaId = ar.areaId "
				+ "WHERE a.isDeleted=0 AND ar.isDeleted=0 "
				+ "AND a.adminId="+id, Admin.class)).get(0);
		return a;
	}

	@Override
	public void updatepassword(Admin admin) {
		getSession().saveOrUpdate(admin);
		
	}
	@Override
	public void updatepass(Admin a) {
		// TODO Auto-generated method stub
		
	}
	
}
