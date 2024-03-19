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

import com.mii.model.Admin;
import com.mii.model.State;
import com.mii.service.StateService;

@Controller
@RequestMapping("/state")
@SessionAttributes("admin")
public class StateController {

	@Autowired
	StateService stateService;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("/stateList")
	public String stateList(Model model)
	{
		State state = new State();
		model.addAttribute("register", state);
		model.addAttribute("edit", false);
		
		List<State> states = stateService.getAll();
		model.addAttribute("states", states);
		return "statelist";
	}
	@RequestMapping("/addState")
	public String addState(@ModelAttribute("register") State state, BindingResult result, Model model)
	{
		State s = stateService.addState(state);
		return "redirect:/state/stateList";
	}
	@RequestMapping("/editState/{id}")
	public String editState(@PathVariable("id") int id, Model model)
	{
		State state = stateService.getById(id);
		model.addAttribute("register", state);
		model.addAttribute("edit", true);
		List<State> states = stateService.getAll();
		model.addAttribute("states", states);
		return "statelist";
	}
	@RequestMapping("/updateState")
	public String updateState(@ModelAttribute("register") State state, BindingResult result, Model model)
	{
		State s = stateService.updateState(state);
		return "redirect:/state/stateList";
	}
	@RequestMapping("/deleteState/{id}")
	public String deleteState(@PathVariable("id") int id, Model model)
	{
		State state = stateService.deleteState(id);
		return "redirect:/state/stateList";
	}
}
