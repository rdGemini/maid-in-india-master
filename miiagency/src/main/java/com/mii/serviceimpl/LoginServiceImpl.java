package com.mii.serviceimpl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mii.dao.AgencyDao;
import com.mii.model.Agency;
import com.mii.service.LoginService;
import com.mii.util.Mailer;
import com.mii.util.PasswordEncode;
import com.mii.util.PasswordEncrypt;
import com.mii.util.RandomString;

@Service("loginService")
@Transactional
@SessionAttributes("agency")
public class LoginServiceImpl implements LoginService{

	@Autowired
	AgencyDao agencyDao;
	
	@Autowired
	HttpSession session;
	
	@Override
	public Agency login(Agency agency) {
		String password = agency.getPassword();
		//String fpass = PasswordEncode.passwordEncode(admin.getPassword());
		agency.setPassword(PasswordEncode.passwordEncode(agency.getPassword()));
		return agencyDao.loginCheck(agency);
		//MvPVWYcx
		//xlXQisVF
	}
	@Override
	public Agency forgotPassword(Agency agency) 
	{
		Agency a = agencyDao.forgotpassword(agency);
		if (a.getPassword() != null) 
		{
			int n = 8;
			String password = RandomString.getAlphaNumericString(n);
			a.setPassword(PasswordEncode.passwordEncode(password));
			agencyDao.updateObject(a);
			Mailer.send("maidinindia03@gmail.com", "mii@41926", agency.getEmailId(), "Hello,How r u?", password);
		}
		return a;

	}
	@Override
	public Agency changePass(Agency agency) 
	{
		if(agency.getCpassword().equals(agency.getNpassword()))
		{	
			agency.setPassword(PasswordEncode.passwordEncode(agency.getPassword()));
//			Admin a = adminDao.changepassword(admin);
//			if(a==null)
//				return null;
			Agency sAgency = (Agency) session.getAttribute("agency");
			if (!(sAgency.getPassword().equals(agency.getNpassword()))) 
			{
				sAgency.setPassword(PasswordEncode.passwordEncode(agency.getNpassword()));
				agencyDao.updateObject(sAgency);
				//Mailer.send("maidinindia03@gmail.com", "mii@41926", admin.getEmailId(), "Hello,How r u?", a.getPassword());
				return sAgency;
			}
		}
		return null;
	}
}
