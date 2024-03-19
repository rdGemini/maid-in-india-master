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
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mii.model.City;
import com.mii.service.CityService;

@Controller
@RequestMapping("/city")
@SessionAttributes("maid")
public class CityController {
	@Autowired
	CityService cityService;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("/cityList")
	public String cityList(Model model)
	{
		City city = new City();
		//List<State> states = stateService.getAll();
		List<City> cities = cityService.getAll();
		model.addAttribute("register", city);
		model.addAttribute("edit", false);
		//model.addAttribute("states",states);
		model.addAttribute("cities", cities);
		return "citylist";
	}
	@RequestMapping("/addCity")
	public String addCity(@ModelAttribute("register") City city, BindingResult result, Model model)
	{
		City c = cityService.addCity(city);
		return "redirect:/city/cityList";
	}
	@RequestMapping("/editCity/{id}")
	public String editCity(@PathVariable("id") int id, Model model)
	{
		City city = cityService.getById(id);
		model.addAttribute("register", city);
		model.addAttribute("edit", true);
		//List<State> states = stateService.getAll();
		//model.addAttribute("states",states);
		List<City> cities = cityService.getAll();
		model.addAttribute("cities", cities);
		return "citylist";
	}
	@RequestMapping("/updateCity")
	public String updateCity(@ModelAttribute("register") City city, BindingResult result, Model model)
	{
		City c = cityService.updateCity(city);
		return "redirect:/city/cityList";
	}
	@RequestMapping("/deleteCity/{id}")
	public String deleteCity(@PathVariable("id") int id, Model model)
	{
		City city = cityService.deleteCity(id);
		return "redirect:/city/cityList";
	}
}
