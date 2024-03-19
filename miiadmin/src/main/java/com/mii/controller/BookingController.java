package com.mii.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mii.dao.AgencyDao;
import com.mii.dao.BookingDao;
import com.mii.model.Agency;
import com.mii.model.Area;
import com.mii.model.Booking;
import com.mii.model.City;
import com.mii.model.SelectedServices;
import com.mii.service.AgencyService;
import com.mii.service.AreaService;
import com.mii.service.BookingService;
import com.mii.service.CityService;

@Controller
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
	
	@RequestMapping("/bookingList")
	public String manageBooking(Model model) {
		List<Booking> bookingList = bookingService.getAll();
		model.addAttribute("bookings", bookingList);
		return "managebooking";
	}

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
