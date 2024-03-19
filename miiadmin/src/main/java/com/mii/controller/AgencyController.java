package com.mii.controller;

import java.util.List;

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
import org.springframework.web.multipart.MultipartFile;

import com.mii.dao.AgencyDao;
import com.mii.model.Admin;
import com.mii.model.Agency;
import com.mii.model.Area;
import com.mii.model.City;
import com.mii.service.AgencyService;
import com.mii.service.AreaService;
import com.mii.service.CityService;

@Controller
@RequestMapping("/agency")
public class AgencyController {

	@Autowired
	AgencyService agencyService;
	@Autowired
	AreaService areaService;
	@Autowired
	AgencyDao agencyDao;
	@Autowired
	CityService cityService; 
	@RequestMapping("/agencyList")
	public String manageAgency(Model model) {
		List<Agency> agencyList = agencyService.getAll();
		model.addAttribute("agencies", agencyList);
		return "manageagency";
	}
	@RequestMapping("/registerAgency")
	public String agencyRegistrationPage(Model model) {
		Agency agency = new Agency();
		List<City> cities = cityService.getAll();
		List<Area> areas = areaService.getAll();
		model.addAttribute("cities", cities);
		model.addAttribute("areas",areas);
		model.addAttribute("register", agency);
		model.addAttribute("edit", false);
		return "registeragency";
	}

	@RequestMapping("/addAgency")
	public String registrationPage(@ModelAttribute("register") Agency agency, BindingResult result, Model model,
			@RequestParam("certificateImage") MultipartFile file) {
		int result1 = agencyService.addAgency(agency, file);
		if (result1 == 1) {
			model.addAttribute("errorMsg", "It is already exists...!!!");
			return "redirect:/agency/registerAgency";
		}
		return "redirect:/agency/agencyList";
	}
	@RequestMapping("/editAgency/{id}")
	public String editAgency(@PathVariable("id") int id, Model model) {
		Agency agency = agencyService.getById(id);
		List<City> cities = cityService.getAll();
		List<Area> areas =areaService.getAllAreasByCityId((int)agency.getCityId());
		model.addAttribute("cities", cities);
		model.addAttribute("areas",areas);
		model.addAttribute("register", agency);
		model.addAttribute("edit", true);
		return "registeragency";
	}

	@RequestMapping("/updateAgency")
	public String updateAdmin(@ModelAttribute("register") Agency agency, BindingResult result, Model model) {
		int res = agencyService.updateAgency(agency);
		return "redirect:/agency/agencyList";
	}

	@RequestMapping("/deleteAgency/{id}")
	public String deleteAgency(@PathVariable("id") int id) {
		int result = agencyService.deleteAgency(id);
		return "redirect:/agency/agencyList";
	}
	
	@RequestMapping("/viewAgency/{id}")
	public String viewAgency(@PathVariable("id") int id, Model model) {
		Agency agency = agencyService.getById(id);
		List<City> cities = cityService.getAll();
		List<Area> areas = areaService.getAll();
		model.addAttribute("cities", cities);
		model.addAttribute("areas",areas);
		model.addAttribute("agencydet", agency);
		// model.addAttribute("edit", true);
		return "viewagency";
	}
	@RequestMapping(value = "/checkEmailId/{emailId}", method = RequestMethod.GET)
	public @ResponseBody String checkEmailId(@PathVariable("emailId") String emailId) {
		emailId += ".com";
	    int result = agencyDao.emailCheck(emailId);
	    if(result != 0)
	    	return "true";
	    return "false";
	}
	
	
	
}
