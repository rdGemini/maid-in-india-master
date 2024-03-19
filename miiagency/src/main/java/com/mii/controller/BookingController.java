package com.mii.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mii.dao.BookingDao;
import com.mii.model.Agency;
import com.mii.model.Area;
import com.mii.model.Booking;
import com.mii.model.City;
import com.mii.model.SelectedServices;
import com.mii.service.AreaService;
import com.mii.service.BookingService;
import com.mii.service.CityService;

@Controller
@SessionAttributes("agency")
@RequestMapping("/booking")
public class BookingController {
	
	@Autowired 
	BookingService bookingService;
	@Autowired
	AreaService areaService;
	@Autowired
	BookingDao bookingDao;
	@Autowired
	CityService cityService;
	@Autowired
	HttpSession session;
	


	@RequestMapping("/bookingList")
	public String manageBooking(Model model) {
		Agency sAgency = (Agency) session.getAttribute("agency");
		List<Booking> bookingList = bookingService.getAll(sAgency.getAgencyId());
		model.addAttribute("bookings", bookingList);
		return "managebooking";
	}

	/*
	 * @RequestMapping("/editBooking/{id}") public String
	 * editBooking(@PathVariable("id") int id, Model model) { Booking booking =
	 * bookingService.getById(id); List<City> cities = cityService.getAll();
	 * List<Area> areas = areaService.getAll(); model.addAttribute("cities",
	 * cities); model.addAttribute("areas",areas); model.addAttribute("register",
	 * booking); model.addAttribute("edit", true); return "updateBooking"; }
	 * 
	 * @RequestMapping("/updateBooking") public String
	 * updateBooking(@ModelAttribute("register") Booking booking, BindingResult
	 * result, Model model) { int res = bookingService.updateBooking(booking);
	 * return "redirect:/booking/bookingList"; }
	 * 
	 */	/*
	 * @RequestMapping("/deleteBooking/{id}") public String
	 * deleteBooking(@PathVariable("id") int id) { int result =
	 * bookingService.deleteBooking(id); return "redirect:/booking/bookingList"; }
	 */
	
	@RequestMapping("/viewBooking/{id}")
	public String viewBooking(@PathVariable("id") int id, Model model) {
		Booking booking = bookingService.getById(id);
		List<SelectedServices> s = bookingService.getSelectedServicesForBooking(id);
		List<City> cities = cityService.getAll();
		List<Area> areas = areaService.getAll();
		model.addAttribute("selservices", s);
		model.addAttribute("cities", cities);
		model.addAttribute("areas",areas);
		model.addAttribute("bookingdet", booking);
		// model.addAttribute("edit", true);
		return "viewbooking";
	}

}
