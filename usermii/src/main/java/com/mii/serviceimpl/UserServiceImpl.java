package com.mii.serviceimpl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import com.mii.dao.UserDao;
import com.mii.model.User;
import com.mii.service.UserService;
import com.mii.util.FileUtils;
import com.mii.util.Mailer;
import com.mii.util.PasswordEncode;
import com.mii.util.RandomString;

@Service("userService")
@Transactional
@SessionAttributes("user")
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao userDao;
	
	@Autowired
	HttpSession session;
	
	@Override
	public int addUser(User user,Model model) {
		String otp="";
		int result = userDao.emailCheck(user);
		if(result!=0)
		{
			return 1;
		}
		if (user != null) {
			if(user.getCpassword().equals(user.getNpassword()))
			{
				user.setPassword(PasswordEncode.passwordEncode(user.getNpassword()));
			}
			else
				return 2;
			int n = 6;
			otp = RandomString.getNumericString(n);
			user.setOtp(otp);
		}
		//User u = userDao.saveObject(user);
		//User sUser = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		if(user!=null)
		{
			Mailer.send("maidinindia03@gmail.com", "mii@41926", user.getEmailId(), "OTP for signUp in mii !!",otp);
		}	
		return 0;
	}

	@Override
	public int checkOTP(User user) {
		
		if (user.getOtp() != null) 
		{
			User sUser = (User) session.getAttribute("user");
			User u = userDao.saveObject(sUser);
			if(u.getOtp().equals(user.getOtp()))
			{
				Mailer.send("maidinindia03@gmail.com", "mii@41926", u.getEmailId(),"Maid In India", "Thank you for using Maid In India");
				return 0;
			}
		}
		return 1;
	}
	@Override
	public User editUser(User user) {
		
		User u = userDao.updateObject(user);
		return u;
	}

	@Override
	public int deleteUser(long userId) {
		User user = userDao.getById(User.class, userId);
		if(user!=null)
		{
			user.setIsDeleted(1);
			userDao.updateObject(user);
		}
		return 0;
	}
}
