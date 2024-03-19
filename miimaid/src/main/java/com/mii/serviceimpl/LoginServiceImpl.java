package com.mii.serviceimpl;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.mii.dao.MaidDao;
import com.mii.model.Maid;
import com.mii.service.LoginService;
import com.mii.util.FTPUtils;
import com.mii.util.Mailer;
import com.mii.util.PasswordEncode;
import com.mii.util.PasswordEncrypt;
import com.mii.util.RandomString;

@Service("loginService")
@Transactional
@SessionAttributes("maid")
public class LoginServiceImpl implements LoginService{

	@Autowired
	MaidDao maidDao;
	
	@Autowired
	HttpSession session;
	
	private static String UPLOADED_FOLDER1 ="E:\\Tools\\Tomcat 9.0\\webapps\\miimaid\\resources\\images\\profilePicture"+File.separator;
	
	@Override
	public Maid login(Maid maid) {
		String password = maid.getPassword();
		//String fpass = PasswordEncode.passwordEncode(admin.getPassword());
		maid.setPassword(PasswordEncode.passwordEncode(maid.getPassword()));
		Maid m = maidDao.loginCheck(maid);
		if(m!=null)
		{
			String newPP = m.getProfilePicture();
			File ProfileImage = new File(UPLOADED_FOLDER1+newPP);
			if(!ProfileImage.exists())
			{
				FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
			}
			//for(int i=0;i<20;i++)
			//a.setProfileImage((MultipartFile)(profileImage);
		}
		return m;
		//MvPVWYcx
		//xlXQisVF
	}
	@Override
	public Maid forgotPassword(Maid maid) 
	{
		Maid a = maidDao.forgotpassword(maid);
		if (a.getPassword() != null) 
		{
			int n = 8;
			String password = RandomString.getAlphaNumericString(n);
			a.setPassword(PasswordEncode.passwordEncode(password));
			maidDao.updateObject(a);
			Mailer.send("maidinindia03@gmail.com", "mii@41926", maid.getEmailId(), "Hello,How r u?", password);
		}
		return a;

	}
	@Override
	public Maid changePass(Maid maid) 
	{
		if(maid.getCpassword().equals(maid.getNpassword()))
		{	
			maid.setPassword(PasswordEncode.passwordEncode(maid.getPassword()));
//			Admin a = adminDao.changepassword(admin);
//			if(a==null)
//				return null;
			Maid sMaid = (Maid) session.getAttribute("maid");
			if (!(sMaid.getPassword().equals(maid.getNpassword()))) 
			{
				sMaid.setPassword(PasswordEncode.passwordEncode(maid.getNpassword()));
				maidDao.updateObject(sMaid);
				//Mailer.send("maidinindia03@gmail.com", "mii@41926", admin.getEmailId(), "Hello,How r u?", a.getPassword());
				return sMaid;
			}
		}
		return null;
	}
}
