package com.mii.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mii.model.Deals;
import com.mii.model.Feedback;
import com.mii.model.MainService;
import com.mii.service.DealsService;
import com.mii.service.FeedbackService;
import com.mii.service.MainServiceService;
import com.mii.service.UserService;

@Controller
@RequestMapping("/user")
public class DealsController {

	@Autowired
	DealsService dealsService;

	@RequestMapping("/deals")
	public String dealsDetails(Model model)
	{
		List<Deals> dealsList = dealsService.getAll();
		model.addAttribute("deals", dealsList);
		return "deals";
	}
	
	@RequestMapping("/deal")
	public String deals()
	{
		return "deals";
	}
}
