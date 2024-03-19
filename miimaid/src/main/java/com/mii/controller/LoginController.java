package com.mii.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mii.model.Maid;
import com.mii.service.LoginService;

@Controller
@RequestMapping("/maid")
@SessionAttributes("maid")
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
	public String login(@ModelAttribute("log") Maid maid, Model model) {
		Maid newMaid = loginService.login(maid);
		if (newMaid == null) {
			model.addAttribute("errorMsg", "Wrong Username or Password...!!!");
			return "redirect:/maid/login";
		}
		model.addAttribute("maid", newMaid);
		return "redirect:/maid/home";
	}

	@RequestMapping("/forgotPassword")
	public String forgot() {
		return "forgotpassword";
	}

	@RequestMapping("/getPassword")
	public String password(@ModelAttribute("password") Maid maid, Model model) {
		Maid newMaid = loginService.forgotPassword(maid);
		if (newMaid == null) {
			model.addAttribute("errorMsg", "Wrong Username or Password...!!!");
			return "redirect:/maid/login";
		}
		model.addAttribute("Maid", newMaid);
		return "redirect:/maid/login";
	}

	@RequestMapping("/changePassword")
	public String change(Model model) {
		model.addAttribute("cpass", new Maid());
		return "changepassword";
	}

	@RequestMapping("/change")
	public String changePass(@ModelAttribute("cpass") Maid maid, Model model) {
		Maid newMaid = loginService.changePass(maid);
		//maid sMaid = (Maid) session.getAttribute("Maid");
		if (newMaid == null) {
			model.addAttribute("errorMsg", "Old and new passwords are same...!!!");
			return "redirect:/maid/changePassword";
		}
		model.addAttribute("Maid", newMaid);
		return "redirect:/maid/home";
	}
}
