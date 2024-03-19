package com.mii.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mii.model.Agency;
import com.mii.service.LoginService;

@Controller
@RequestMapping("/agency")
@SessionAttributes("agency")
public class LoginController {

	@Autowired
	LoginService loginService;

	@Autowired
	HttpSession session;
	
	@RequestMapping("/login")
	public String loginPage() {
		return "login";
	}

	@RequestMapping("/loggingIn")
	public String login(@ModelAttribute("log") Agency agency, Model model) {
		Agency newAgency = loginService.login(agency);
		if (newAgency == null) {
			model.addAttribute("errorMsg", "Wrong Username or Password...!!!");
			return "redirect:/agency/login";
		}
		model.addAttribute("agency", newAgency);
		return "redirect:/agency/home";
	}

	@RequestMapping("/forgotPassword")
	public String forgot() {
		return "forgotpassword";
	}

	@RequestMapping("/getPassword")
	public String password(@ModelAttribute("password") Agency agency, Model model) {
		Agency newAgency = loginService.forgotPassword(agency);
		if (newAgency == null) {
			model.addAttribute("errorMsg", "Wrong Username or Password...!!!");
			return "redirect:/agency/login";
		}
		model.addAttribute("agency", newAgency);
		return "redirect:/agency/login";
	}

	@RequestMapping("/changePassword")
	public String change(Model model) {
		model.addAttribute("cpass", new Agency());
		return "changepassword";
	}

	@RequestMapping("/change")
	public String changePass(@ModelAttribute("cpass") Agency agency, Model model) {
		Agency newAgency = loginService.changePass(agency);
		//Agency sAgency = (Agency) session.getAttribute("agency");
		if (newAgency == null) {
			model.addAttribute("errorMsg", "Old and new passwords are same...!!!");
			return "redirect:/agency/changePassword";
		}
		model.addAttribute("agency", newAgency);
		return "redirect:/agency/home";
	}
}
