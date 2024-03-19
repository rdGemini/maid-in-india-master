/*package com.mii.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mii.model.Order;
import com.mii.model.User;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class OrderController {

	@RequestMapping("/registration")
	public String registration(Model model) {
		Order order = new Order();
		model.addAttribute("register", order);
		return "orderform";
	}
}*/
