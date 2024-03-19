package com.mii.serviceimpl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.mii.dao.UserDao;
import com.mii.model.User;
import com.mii.service.LoginService;
import com.mii.util.Mailer;
import com.mii.util.PasswordEncode;
import com.mii.util.RandomString;

@Service("loginService")
@Transactional
@SessionAttributes("user")
public class LoginServiceImpl implements LoginService{

	@Autowired
	UserDao userDao;
	
	@Autowired
	HttpSession session;
	
	@Override
	public User login(User user) {
		//String password = user.getPassword();
		//String fpass = PasswordEncode.passwordEncode(admin.getPassword());
		user.setPassword(PasswordEncode.passwordEncode(user.getPassword()));
		return userDao.loginCheck(user);
		//MvPVWYcx
		//xlXQisVF
	}
	
	@Override
	public User forgotPassword(User user) 
	{
		User a = userDao.forgotpassword(user);
		if (a != null) 
		{
			int n = 6;
			String otp = RandomString.getNumericString(n);
			a.setOtp(otp);
			userDao.updateObject(a);
			Mailer.send("maidinindia03@gmail.com", "mii@41926", user.getEmailId(), "OTP for changing password", otp);
		}
		return a;

	}

	@Override
	public int checkOTP(User user) {
		
		if (user.getOtp() != null) 
		{
			User sUser = (User) session.getAttribute("user");
			if(sUser.getOtp().equals(user.getOtp()))
			{
				return 0;
			}
		}
		return 1;
	}
	
	@Override
	public User newPassword(User user) 
	{
		if(user.getCpassword().equals(user.getNpassword()))
		{	
			user.setPassword(PasswordEncode.passwordEncode(user.getNpassword()));
//			Admin a = adminDao.changepassword(admin);
//			if(a==null)
//				return null;
			User sUser = (User) session.getAttribute("user");
			
			sUser.setPassword(PasswordEncode.passwordEncode(user.getNpassword()));
			userDao.updateObject(sUser);
			//Mailer.send("maidinindia03@gmail.com", "mii@41926", admin.getEmailId(), "Hello,How r u?", a.getPassword());
			return sUser;
			
		}
		return null;
	}
}
