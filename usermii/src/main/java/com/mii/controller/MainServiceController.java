package com.mii.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.mii.model.Feedback;
import com.mii.model.MainService;
import com.mii.service.FeedbackService;
import com.mii.service.MainServiceService;
import com.mii.service.UserService;

@Controller
@RequestMapping("/user")
public class MainServiceController {

	@Autowired
	MainServiceService mainServiceService;

	@RequestMapping("/orderform")
	public String orderform(Model model)
	{
		List<MainService> mainServiceList = mainServiceService.getAll();
		model.addAttribute("services", mainServiceList);
		return "orderform";
	}
	
	@RequestMapping("/order")
	public String order()
	{
		return "orderformold";
	}
}
