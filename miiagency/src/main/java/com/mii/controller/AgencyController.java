package com.mii.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
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

import com.mii.dao.AgencyDao;
import com.mii.dao.BookingDao;
import com.mii.dao.MaidDao;
import com.mii.model.Agency;
import com.mii.model.Area;
import com.mii.model.Booking;
import com.mii.model.City;
import com.mii.model.Home;
import com.mii.model.Maid;
import com.mii.service.AgencyService;
import com.mii.service.AreaService;
import com.mii.service.CityService;
import com.mii.util.FTPUtils;

@Controller
@RequestMapping("/agency")
@SessionAttributes("agency")
public class AgencyController {

	@Autowired
	AgencyService agencyService;
	
	@Autowired
	CityService cityService;
	
	@Autowired
	AreaService areaService;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	AgencyDao agencyDao;
	
	@Autowired
	MaidDao maidDao;

	@Autowired
	BookingDao bookingDao;
	
	@RequestMapping("/faq")
	public String faq() {
		return "faq";
	}
	
	@RequestMapping("/home")
	public String home(Model model) {
		
		Agency a = (Agency) session.getAttribute("agency");
		List<Booking> b = bookingDao.getActive(a.getAgencyId());
		List<Maid> m = maidDao.getActive(a.getAgencyId());
		Home h = new Home();
		h.setNoOfBookings(b.size());
		h.setNoOfMaids(m.size());
		model.addAttribute("total",h);
		return "home";
	}

	@RequestMapping(value = "/checkEmailId/{emailId}", method = RequestMethod.GET)
	public @ResponseBody String checkEmailId(@PathVariable("emailId") String emailId) {
		emailId += ".com";
	    int result = agencyDao.emailCheck(emailId);
	    if(result != 0)
	    	return "true";
	    return "false";
	}
	
	@RequestMapping("/editAgency")
	public String editAgency(Model model) {
		//Agency agency = agencyService.getById(id);
		Agency sAgency = (Agency) session.getAttribute("agency");
		Agency a = agencyService.getById(sAgency.getAgencyId());
		List<City> cities = cityService.getAll();
		List<Area> areas =areaService.getAllAreasByCityId((int)a.getCityId());
		model.addAttribute("cities", cities);
		model.addAttribute("areas",areas);
		model.addAttribute("register", a);
		model.addAttribute("edit", true);
		return "registeragency";
	}

	@RequestMapping(value = "/getAreas/{cityId}", method = RequestMethod.GET)
	public @ResponseBody List<Area> getAllAreas(@PathVariable("cityId") int cityId) {
	    return areaService.getAllAreasByCityId(cityId);
	}
	
	@RequestMapping("/updateAgency")
	public String updateAdmin(@ModelAttribute("register") Agency agency, BindingResult result, Model model) {
		Agency ag = agencyService.updateAgency(agency);
		model.addAttribute("agency", ag);
		return "redirect:/agency/home";
	}

	@RequestMapping("/deleteAgency")
	public String deleteAgency() {
		Agency sAgency = (Agency) session.getAttribute("agency");
		int result = agencyService.deleteAgency(sAgency.getAgencyId());
		return "redirect:/agency/login";
	}
	
	@RequestMapping("/viewAgency")
	public String viewAgency(Model model) 
	{
		Agency agency = (Agency) session.getAttribute("agency");
		Agency a = agencyService.getById(agency.getAgencyId());
		List<City> cities = cityService.getAll();
		List<Area> areas = areaService.getAll();
		model.addAttribute("cities", cities);
		model.addAttribute("areas",areas);
		model.addAttribute("agencydet", a);
		return "viewagency";
	}
	@RequestMapping(value = "/", method = RequestMethod.GET) 
	public String displayLogin(Model model) { 
	    model.addAttribute("login", new LoginController()); 
	    return "login"; 
	}
	
}
