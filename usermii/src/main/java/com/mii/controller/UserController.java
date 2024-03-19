package com.mii.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.mii.dao.UserDao;
import com.mii.model.Booking;
import com.mii.model.SelectedServices;
import com.mii.model.User;
import com.mii.service.BookingService;
import com.mii.service.LoginService;
import com.mii.service.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class UserController {
	
	@Autowired
	UserService userService;

	@Autowired
	UserDao userDao;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	BookingService bookingService;
	
	@RequestMapping("/home")
	public String home()
	{
		return "home";
	}
	
	@RequestMapping("/pgRedirect")
	public String pgRedirect()
	{
		return "pgRedirect";
	}
	
	/*@RequestMapping("/http://localhost:8080/usermii/pgResponse.jsp")
	public String ppgResponse()
	{
		return "pgResponse";
	}*/
	@RequestMapping("/pgResponse")
	public String pgResponse()
	{
		return "pgResponse";
	}
	
	@RequestMapping("/maidlist")
	public String maidlist()
	{
		return "maidlist";
	}
	
	@RequestMapping("/myorder")
	public String myorder(Model model)
	{
		List<Booking> booking = bookingService.getAll();
		if(booking.size()==0)
			return "noorder";
		model.addAttribute("bookings",booking);
		return "myorder";
	}
	
	@RequestMapping("/otp")
	public String otp()
	{
		return "otp";
	}
	
	@RequestMapping("/logout")
	public String logout(Model model)
	{	
		User user = new User();
		model.addAttribute("user",user);
		return "login";
	}
	
	@RequestMapping("/registration")
	public String registration(Model model) {
		User user = new User();
		model.addAttribute("register", user);
		model.addAttribute("registration", true);
		model.addAttribute("edit", false);
		return "registration";
	}
	
	@RequestMapping("/editProfile")
	public String editProfile(Model model) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("register", user);
		model.addAttribute("registration", false);
		model.addAttribute("edit", true);
		return "registration";
	}
	
	@RequestMapping("/myprofile")
	public String viewProfile(Model model) 
	{
		User user = (User) session.getAttribute("user");
		model.addAttribute("view", user);
		return "myprofile";
	}
	
	@RequestMapping("/deleteUser")
	public String deleteUser(Model model) 
	{
		User user = (User) session.getAttribute("user");
		int result1 = userService.deleteUser(user.getUserId());
		User user1 = new User();
		model.addAttribute("user",user1);
		return "redirect:/user/login";
	}
	
	@RequestMapping("/addUser")
	public String registrationPage(@ModelAttribute("register") User user,Model model) {
		int result1 = userService.addUser(user,model);
		if (result1 == 1) 
		{
			model.addAttribute("errorMsg", "It is already exists...!!!");
			return "redirect:/user/registration";
		}
		if (result1 == 2) 
		{
			model.addAttribute("errorMsg", "Password & confirm password are not same...!!!");
			return "redirect:/user/registration";
		}
		//User newUser = (User) session.getAttribute("user");
		//model.addAttribute("user", newUser);
		model.addAttribute("registration", true);
		return "redirect:/user/otp";
	}
	
	@RequestMapping("/checkOtp")
	public String checkOtp(@ModelAttribute("cpass") User user, Model model) 
	{
		
		int result = userService.checkOTP(user);
		if (result == 1) {
			model.addAttribute("errorMsg", "Please enter correct otp...!!!");
			return "redirect:/user/changepassword1";
		}
		User newUser = (User) session.getAttribute("user");
		model.addAttribute("user", newUser);
		return "redirect:/user/home";
	}
	
	@RequestMapping("/editUser")
	public String editUser(@ModelAttribute("register") User user,Model model) {
		User u = userService.editUser(user);
		/*if (u == null) 
		{
			model.addAttribute("errorMsg", "It is already exists...!!!");
			return "redirect:/user/registration";
		}*/
		model.addAttribute("User", u);
		return "redirect:/user/home";
	}
	
	@RequestMapping(value = "/checkEmailId/{emailId}", method = RequestMethod.GET)
	public @ResponseBody String checkEmailId(@PathVariable("emailId") String emailId) {
		emailId += ".com";
	    int result = userDao.emailCheck(emailId);
	    if(result != 0)
	    	return "true";
	    return "false";
	}
	
	@RequestMapping("/residentialcleaning")
	public String residentialcleaning()
	{
		return "residentialcleaning";
	}
	
	@RequestMapping("/commercialcleaning")
	public String commercialcleaning()
	{
		return "commercialcleaning";
	}
	
	@RequestMapping("/childcare")
	public String childcare()
	{
		return "childcare";
	}
	
	@RequestMapping("/oldagecare")
	public String oldagecare()
	{
		return "oldagecare";
	}
	
	@RequestMapping("/faq")
	public String faq()
	{
		return "faq";
	}
	
	@RequestMapping("/noorder")
	public String noorder()
	{
		return "noorder";
	}
	
	@RequestMapping("/aboutus")
	public String aboutus()
	{
		return "aboutus";
	}
	
	@RequestMapping("/calculateform")
	public String calculateform()
	{
		return "calculateform";
	}
}
