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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.mii.model.Area;
import com.mii.model.City;
import com.mii.service.AreaService;
import com.mii.service.CityService;

@Controller
@RequestMapping("/area")
@SessionAttributes("maid")
public class AreaController {

	@Autowired
	AreaService areaService;
	
	@Autowired
	CityService cityService;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("/areaList")
	public String areaList(Model model)
	{
		Area area = new Area();
		//List<State> states = stateService.getAll();
		List<City> cities = cityService.getAll();
		List<Area> areas = areaService.getAll();
		model.addAttribute("register", area);
		model.addAttribute("edit", false);
		//model.addAttribute("states",states);
		model.addAttribute("cities", cities);
		model.addAttribute("areas",areas);
		return "arealist";
	}
	@RequestMapping(value = "/getCities/{stateId}", method = RequestMethod.GET)
	public @ResponseBody List<City> getAllCities(@PathVariable("stateId") int stateId) {
	    return cityService.getAllCitiesByStateId(stateId);
	}
	@RequestMapping("/addArea")
	public String addCity(@ModelAttribute("register") Area area, BindingResult result, Model model)
	{
		Area a = areaService.addArea(area);
		return "redirect:/area/areaList";
	}
	@RequestMapping("/editArea/{id}")
	public String editArea(@PathVariable("id") int id, Model model)
	{
		Area area = areaService.getById(id);
		model.addAttribute("register", area);
		model.addAttribute("edit", true);
		//List<State> states = stateService.getAll();
		//model.addAttribute("states",states);
		List<City> cities = cityService.getAll();
		model.addAttribute("cities", cities);
		List<Area> areas = areaService.getAll();
		model.addAttribute("areas",areas);
		return "arealist";
	}
	@RequestMapping("/updateArea")
	public String updateArea(@ModelAttribute("register") Area area, BindingResult result, Model model)
	{
		Area a = areaService.updateArea(area);
		return "redirect:/area/areaList";
	}
	@RequestMapping("/deleteArea/{id}")
	public String deleteArea(@PathVariable("id") int id, Model model)
	{
		Area area = areaService.deleteArea(id);
		return "redirect:/area/areaList";
	}
}
