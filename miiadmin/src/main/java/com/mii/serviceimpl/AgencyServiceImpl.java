package com.mii.serviceimpl;

import java.io.File;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.mii.dao.AgencyDao;
import com.mii.model.Admin;
import com.mii.model.Agency;
import com.mii.service.AgencyService;
import com.mii.util.FTPUtils;
import com.mii.util.FileUtils;
import com.mii.util.Mailer;
import com.mii.util.PasswordEncode;
import com.mii.util.RandomString;

@Service("agencyService")
@Transactional
@SessionAttributes("admin")
public class AgencyServiceImpl implements AgencyService {

	@Autowired
	AgencyDao agencyDao;

	@Autowired
	HttpSession session;
	
	private static String UPLOADED_FOLDER ="E:\\Tools\\Tomcat 9.0\\webapps\\miiadmin\\resources\\images\\agency\\certificate"+File.separator;

	@Override
	public int addAgency(Agency agency, MultipartFile file) {
		String newC = FileUtils.getFileName(file.getOriginalFilename());
		agency.setCertificate(newC);
		agency.setCertificateImage(file);
		Admin ad = (Admin) session.getAttribute("admin");
		agency.setCreatedBy(ad.getAdminId());
		agency.setCreatedDate(new Date(System.currentTimeMillis()));
		agency.setModifiedBy(ad.getAdminId());
		agency.setModifiedDate(new Date(System.currentTimeMillis()));
		String password = RandomString.getAlphaNumericString(8);
		int result = agencyDao.emailCheck(agency);
		if(result!=0)
		{
			return 1;
		}
		if (agency != null) {
			//admin.setPassword(password);
			//admin.setPassword(PasswordEncrypt.passwordEncrypt(admin.getPassword()));
			agency.setPassword(PasswordEncode.passwordEncode(password));
		}
		Agency a = agencyDao.saveObject(agency);
		if(a!=null)
		{
			Mailer.send("maidinindia03@gmail.com", "mii@41926", agency.getEmailId(), "Hello,How r u?", password);
			FileUtils.uploadImageFile(file, UPLOADED_FOLDER+newC);
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER+newC, newC);
		}
		return 0;

	}

	@Override
	public List<Agency> getAll() {
		
		List<Agency> agencyList = agencyDao.getActive();
		/*
		 * for(Agency a : agencyList) { String newC = a.getCertificate(); File
		 * CertificateImage = new File(UPLOADED_FOLDER+newC);
		 * if(!CertificateImage.exists()) { FTPUtils.download(newC,
		 * UPLOADED_FOLDER+newC); } }
		 */
		return  agencyList;
	}

	@Override
	public Agency getById(int id) {
		Agency agency = agencyDao.getFullObjById(id);
		/*
		 * String newC = agency.getCertificate(); File CertificateImage = new
		 * File(UPLOADED_FOLDER+newC); if(!CertificateImage.exists()) {
		 * FTPUtils.download(newC, UPLOADED_FOLDER+newC); }
		 */
		return agency;
	}

	@Override
	public int updateAgency(Agency agency) {
		Admin ad = (Admin) session.getAttribute("admin");
		agency.setModifiedBy(ad.getAdminId());
		agency.setModifiedDate(new Date(System.currentTimeMillis()));
		agencyDao.updateObject(agency);
		return 0;	
	}

	@Override
	public int deleteAgency(int id) {
		Agency agency = agencyDao.getFullObjById(id);
		if(agency!=null)
		{
			agency.setIsDeleted(1);
			agencyDao.updateObject(agency);
		}
		return 0;
	}

}
