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

import com.mii.dao.MaidDao;
import com.mii.dao.MainServiceDao;
import com.mii.model.Area;
import com.mii.model.Booking;
import com.mii.model.City;
import com.mii.model.Maid;
import com.mii.model.MainService;
import com.mii.model.Maid;
import com.mii.model.Maid;
import com.mii.service.AreaService;
import com.mii.service.BookingService;
import com.mii.service.CityService;
import com.mii.service.MaidService;

@Controller
@RequestMapping("/maid")
@SessionAttributes("maid")
public class MaidController {

	@Autowired
	MaidDao maidDao;
	
	@Autowired
	BookingService bookingService;
	
	@Autowired
	CityService cityService;
	
	@Autowired
	AreaService areaService;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	MaidService maidService;
	
	@Autowired
	MainServiceDao mainServiceDao;
	
	
	/*
	 * @RequestMapping("/home") public String home() { return "home"; }
	 */
	
	@RequestMapping("/registerMaid")
	public String maidRegistrationPage(Model model) {
		Maid maid = new Maid();
		List<City> cities = cityService.getAll();
		List<Area> areas = areaService.getAll();
		List<MainService> mservices = mainServiceDao.getActive();
		model.addAttribute("mservices",mservices);
		model.addAttribute("cities",cities);
		model.addAttribute("areas",areas);
		model.addAttribute("register", maid);
		model.addAttribute("edit", false);
		return "register";
	}
	
	@RequestMapping("/home")
	public String home(Model model) {
		Maid sMaid = (Maid) session.getAttribute("maid");
		List<Booking> bookingList = bookingService.getAll(sMaid.getMaidId());
		model.addAttribute("bookings", bookingList);
		return "home";
	}
	
	@RequestMapping("/addMaid")
	public String registrationPage(@ModelAttribute("register") Maid maid, BindingResult result, Model model,
			@RequestParam("profilePictureImage") MultipartFile file1,
			@RequestParam("idProofImage") MultipartFile file2,
			@RequestParam("backgroundCheckImage") MultipartFile file3) {
		int result1 = maidService.addMaid(maid, file1,file2,file3);
		if (result1 == 1) {
			model.addAttribute("errorMsg", "It is already exists...!!!");
			return "redirect:/maid/register";
		}
		return "redirect:/maid/home";
	}

	/*@RequestMapping("/viewMaid")
	public String viewMaid(Model model) 
	{
		Maid sMaid = (Maid) session.getAttribute("maid");
		Maid maid = maidService.getById(sMaid.getMaidId());
		List<City> cities = cityService.getAll();
		List<Area> areas = areaService.getAll();
		return "viewmaid";
	}*/
	@RequestMapping("/faq")
	public String faq() {
		return "faq";
	}
	@RequestMapping("/editMaid")
	public String editMaid(Model model) {
		Maid sMaid = (Maid) session.getAttribute("maid");
		Maid maid = maidService.getById(sMaid.getMaidId());
		List<City> cities = cityService.getAll();
		List<Area> areas =areaService.getAllAreasByCityId((int)maid.getCityId());
		List<MainService> mservices = mainServiceDao.getActive();
		model.addAttribute("mservices",mservices);
		model.addAttribute("cities",cities);
		model.addAttribute("areas",areas);
		model.addAttribute("register", maid);
		model.addAttribute("edit", true);
		return "registermaid";
	}
	
	@RequestMapping("/updateMaid")
	public String updateMaid(@ModelAttribute("register") Maid maid, BindingResult result, Model model,
			@RequestParam("profilePictureImage") MultipartFile file1) {
		Maid m = maidService.updateMaid(maid, file1);
		model.addAttribute("maid", m);
		return "redirect:/maid/home";
	}

	@RequestMapping("/viewMaid")
	public String viewMaid(Model model) {
		Maid sMaid = (Maid) session.getAttribute("maid");
		Maid maid = maidService.getById(sMaid.getMaidId());
		List<City> cities = cityService.getAll();
		List<Area> areas = areaService.getAll();
		List<MainService> mservices = mainServiceDao.getActive();
		model.addAttribute("mservices",mservices);
		model.addAttribute("cities",cities);
		model.addAttribute("areas",areas);
		model.addAttribute("maiddet", maid);
		// model.addAttribute("edit", true);
		return "viewmaid";
	}
	
	@RequestMapping("/deleteMaid")
	public String deleteMaid() {
		Maid sMaid = (Maid) session.getAttribute("maid");
		int result = maidService.deleteMaid(sMaid.getMaidId());
		return "redirect:/maid/login";
	}
	
	@RequestMapping(value = "/checkEmailId/{emailId}", method = RequestMethod.GET)
	public @ResponseBody String checkEmailId(@PathVariable("emailId") String emailId) {
		emailId += ".com";
	    int result = maidDao.emailCheck(emailId);
	    if(result != 0)
	    	return "true";
	    return "false";
	}
	
	@RequestMapping(value = "/getAreas/{cityId}", method = RequestMethod.GET)
	public @ResponseBody List<Area> getAllAreas(@PathVariable("cityId") int cityId) {
	    return areaService.getAllAreasByCityId(cityId);
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET) 
	public String displayLogin(Model model) { 
	    model.addAttribute("login", new LoginController()); 
	    return "login"; 
	}
	
	
}
