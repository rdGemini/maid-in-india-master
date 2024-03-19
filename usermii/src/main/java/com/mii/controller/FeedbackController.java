package com.mii.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mii.model.Feedback;
import com.mii.service.FeedbackService;
import com.mii.service.UserService;

@Controller
@RequestMapping("/user")
public class FeedbackController {

	@Autowired
	FeedbackService feedbackService;
	
	@RequestMapping("/feedback")
	public String feedback()
	{
		return "feedback";
	}
	
	@RequestMapping("/addFeedback")
	public String addFeedback(@ModelAttribute("feedback") Feedback feedback, Model model) {
		int result = feedbackService.addData(feedback);
		return "redirect:/user/home";
	}
	
	@RequestMapping("/bap")
	public String bap()
	{
		return "bap";
	}
	
	@RequestMapping("/sendMail")
	public String sendMail(@ModelAttribute("bap") Feedback feedback, Model model) {
		int result = feedbackService.sendMail(feedback);
		return "redirect:/user/home";
	}
}
