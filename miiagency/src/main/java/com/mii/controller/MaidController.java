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

import com.mii.dao.MaidDao;
import com.mii.dao.MainServiceDao;
import com.mii.model.Agency;
import com.mii.model.Area;
import com.mii.model.City;
import com.mii.model.Maid;
import com.mii.model.MainService;
import com.mii.service.AreaService;
import com.mii.service.CityService;
import com.mii.service.MaidService;

@Controller
@RequestMapping("/maid")
public class MaidController {

	@Autowired
	MaidService maidService;
	@Autowired
	MaidDao maidDao;
	@Autowired
	CityService cityService;
	@Autowired
	AreaService areaService;
	@Autowired
	MainServiceDao mainServiceDao;
	
	@RequestMapping("/maidList")
	public String manageMaid(Model model) {
		List<Maid> maidList = maidService.getAll();
		model.addAttribute("maids", maidList);
		return "managemaid";
	}
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
		return "registermaid";
	}

	@RequestMapping("/addMaid")
	public String registrationPage(@ModelAttribute("register") Maid maid, BindingResult result, Model model,
			@RequestParam("profilePictureImage") MultipartFile file1,
			@RequestParam("idProofImage") MultipartFile file2,
			@RequestParam("backgroundCheckImage") MultipartFile file3) {
		int result1 = maidService.addMaid(maid, file1,file2,file3);
		if (result1 == 1) {
			model.addAttribute("errorMsg", "It is already exists...!!!");
			return "redirect:/maid/registerMaid";
		}
		return "redirect:/maid/maidList";
	}
	
	@RequestMapping("/editMaid/{id}")
	public String editMaid(@PathVariable("id") int id, Model model) {
		Maid maid = maidService.getById(id);
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
		int res = maidService.updateMaid(maid, file1);
		return "redirect:/maid/maidList";
	}

	@RequestMapping("/deleteMaid/{id}")
	public String deleteMaid(@PathVariable("id") int id) {
		int result = maidService.deleteMaid(id);
		return "redirect:/maid/maidList";
	}
	
	@RequestMapping("/viewMaid/{id}")
	public String viewMaid(@PathVariable("id") int id, Model model) {
		Maid maid = maidService.getById(id);
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
	@RequestMapping(value = "/checkEmailId/{emailId}", method = RequestMethod.GET)
	public @ResponseBody String checkEmailId(@PathVariable("emailId") String emailId) {
		emailId += ".com";
	    int result = maidDao.emailCheck(emailId);
	    if(result != 0)
	    	return "true";
	    return "false";
	}
	
}
