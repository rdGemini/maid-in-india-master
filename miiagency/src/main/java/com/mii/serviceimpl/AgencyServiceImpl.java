package com.mii.serviceimpl;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.mii.dao.AgencyDao;
import com.mii.model.Agency;
import com.mii.service.AgencyService;
import com.mii.util.FileUtils;
import com.mii.util.Mailer;
import com.mii.util.PasswordEncode;
import com.mii.util.RandomString;

@Service("agencyService")
@Transactional
@SessionAttributes("agency")
public class AgencyServiceImpl implements AgencyService {

	@Autowired
	AgencyDao agencyDao;
	
	@Autowired
	HttpSession session;
	
	private static String UPLOADED_FOLDER ="E:\\Tools\\Tomcat 9.0\\webapps\\miiagency\\resources\\images\\idProof"+File.separator;

	@Override
	public Agency getById(long id) {
		//Agency agency = agencyDao.getById(Agency.class, id);
		Agency agency = agencyDao.getFullObjById(id);
		return agency;
	}

	@Override
	public Agency updateAgency(Agency agency) 
	{
		Agency ag = agencyDao.updateObject(agency);
		return ag;	
	}

	@Override
	public int deleteAgency(long id) {
		//Agency agency = agencyDao.getById(Agency.class, id);
		Agency sAgency = (Agency) session.getAttribute("agency");
		if(sAgency!=null)
		{
			sAgency.setIsDeleted(1);
			agencyDao.updateObject(sAgency);
		}
		return 0;
	}

}
