package com.mii.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

import com.mii.dao.AdminDao;
import com.mii.dao.AgencyDao;
import com.mii.dao.BookingDao;
import com.mii.dao.MaidDao;
import com.mii.dao.UserDao;
import com.mii.model.Admin;
import com.mii.model.Agency;
import com.mii.model.Area;
import com.mii.model.Booking;
import com.mii.model.City;
import com.mii.model.Home;
import com.mii.model.Maid;
import com.mii.model.User;
import com.mii.service.AdminService;
import com.mii.service.AreaService;
import com.mii.service.BookingService;
import com.mii.service.CityService;
import com.mii.util.FTPUtils;

@Controller
@RequestMapping("/admin")
@SessionAttributes("admin")
public class AdminController {

	@Autowired
	AdminService adminService;

	@Autowired
	CityService cityService;
	
	@Autowired 
	AreaService areaService;
	
	@Autowired
	AdminDao adminDao;

	@Autowired
	AgencyDao agencyDao;
	
	@Autowired
	MaidDao maidDao;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	BookingDao bookingDao;
	/*
	 * @RequestMapping("/login") public String loginPage() { return "login"; }
	 */
	
	private static String UPLOADED_FOLDER1 ="J:\\Tools\\Apache Tomcat\\webapps\\miiadmin\\resources\\images\\profilePicture"+File.separator;

	
	@RequestMapping("/home")
	public String home(Model model) {
		
		List<Booking> b = bookingDao.getActive();
		List<Agency> ag = agencyDao.getActive();
		List<Maid> m = maidDao.getActive();
		List<User> u = userDao.getActive();
		Home h = new Home();
		h.setNoOfAgencies(ag.size());
		h.setNoOfBookings(b.size());
		h.setNoOfMaids(m.size());
		h.setNoOfUsers(u.size());
		model.addAttribute("total",h);
		Admin a = (Admin) session.getAttribute("admin");
		String newPP = a.getProfilePicture();
		File ProfileImage = new File(UPLOADED_FOLDER1+newPP);
		if(!ProfileImage.exists())
		{
			FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
		}
		return "home";
	}
	
	@RequestMapping("/error")
	public String error() {
		return "error";
	}
	
	@RequestMapping("/faq")
	public String faq() {
		return "faq";
	}

	@RequestMapping("/adminList")
	public String manageAdmin(Model model) {
		List<Admin> adminList = adminService.getAll();
		model.addAttribute("admins", adminList);
		return "manageadmin";
	}

	@RequestMapping("/registerAdmin")
	public String adminRegistrationPage(Model model) {
		Admin admin = new Admin();
		List<City> cities = cityService.getAll();
		List<Area> areas = areaService.getAll();
		model.addAttribute("cities", cities);
		model.addAttribute("areas",areas);
		model.addAttribute("register", admin);
		model.addAttribute("edit", false);
		return "registeradmin";
	}
	
	@RequestMapping(value = "/checkEmailId/{emailId}", method = RequestMethod.GET)
	public @ResponseBody String checkEmailId(@PathVariable("emailId") String emailId) {
		emailId += ".com";
	    int result = adminDao.emailCheck(emailId);
	    if(result != 0)
	    	return "true";
	    return "false";
	}
	
	@RequestMapping("/addAdmin")
	public String registrationPage(@ModelAttribute("register") Admin admin, BindingResult result, Model model,
			@RequestParam("profileImage") MultipartFile file1, @RequestParam("idProofImage") MultipartFile file2) {
		
		int result1 = adminService.addAdmin(admin, file1, file2);
		if (result1 == 1) {
			model.addAttribute("errorMsg", "It is already exists...!!!");
			return "redirect:/admin/registerAdmin";
		}
		return "redirect:/admin/adminList";
	}

	@RequestMapping("/editAdmin/{id}")
	public String editAdmin(@PathVariable("id") int id, Model model) {
		Admin admin = adminService.getById(id);
		List<City> cities = cityService.getAll();
		List<Area> areas =areaService.getAllAreasByCityId((int)admin.getCityId());
		model.addAttribute("cities", cities);
		model.addAttribute("areas",areas);
		model.addAttribute("register", admin);
		model.addAttribute("edit", true);
		return "registeradmin";
	}
	
	@RequestMapping("/editAdmin")
	public String editAdmin(Model model) {
		Admin admin = (Admin) session.getAttribute("admin");
		List<City> cities = cityService.getAll();
		List<Area> areas = areaService.getAll();
		model.addAttribute("cities", cities);
		model.addAttribute("areas",areas);
		model.addAttribute("register", admin);
		model.addAttribute("edit", true);
		return "registeradmin";
	}

	@RequestMapping("/updateAdmin")
	public String updateAdmin(@ModelAttribute("register") Admin admin, BindingResult result, Model model,
			@RequestParam("profileImage") MultipartFile file1, @RequestParam("idProofImage") MultipartFile file2) {
		//admin.setIdProofImage(file2);
		int res = adminService.updateAdmin(admin, file1,file2);
		Admin ad = (Admin) session.getAttribute("admin");
		Admin newsession = adminDao.getFullObjById((int)ad.getAdminId());
		model.addAttribute("admin", newsession);
		return "redirect:/admin/adminList";
	}

	@RequestMapping("/deleteAdmin/{id}")
	public String deleteAdmin(@PathVariable("id") int id) {
		adminService.deleteAdmin(id);
		return "redirect:/admin/adminList";
	}

	/*
	 * @RequestMapping("/forgotPassword") public String forgotPassword(Admin admin)
	 * { adminService.forgotPassword(admin); return "redirect:/admin/adminList"; }
	 */

	@RequestMapping("/viewAdmin/{id}")
	public String viewAdmin(@PathVariable("id") int id, Model model) {
		Admin admin = adminService.getById(id);
		List<City> cities = cityService.getAll();
		List<Area> areas = areaService.getAll();
		model.addAttribute("cities", cities);
		model.addAttribute("areas",areas);
		model.addAttribute("admindet", admin);
		// model.addAttribute("edit", true);
		return "viewprofile";
	}
	
	@RequestMapping("/viewProfile")
	public String viewProfile(Model model) 
	{
		Admin admin = (Admin) session.getAttribute("admin");
		Admin madmin = adminService.getById((int)(admin.getAdminId()));
		List<City> cities = cityService.getAll();
		List<Area> areas = areaService.getAll();
		model.addAttribute("cities", cities);
		model.addAttribute("areas",areas);
		model.addAttribute("admindet", madmin);
		return "viewprofile";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET) 
	public String displayLogin(Model model) { 
	    model.addAttribute("login", new LoginController()); 
	    return "login"; 
	}
	
	

}
