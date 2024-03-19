package com.mii.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mii.dao.SelectedServicesDao;
import com.mii.model.Area;
import com.mii.model.Booking;
import com.mii.model.City;
import com.mii.model.MainService;
import com.mii.model.SelectedServices;
import com.mii.model.Service;
import com.mii.model.User;
import com.mii.service.AreaService;
import com.mii.service.BookingService;
import com.mii.service.CityService;
import com.mii.service.MainServiceService;
import com.mii.service.ServiceService;
import com.mii.service.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class BookingController {

	@Autowired
	UserService userService;
	
	@Autowired
	BookingService bookingService;

	@Autowired
	CityService cityService;
	
	@Autowired
	AreaService areaService;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	ServiceService serviceService;
	
	@Autowired
	SelectedServicesDao selectedServicesDao;
	
	@RequestMapping(value = "/getAreas/{cityId}", method = RequestMethod.GET)
	public @ResponseBody List<Area> getAllAreas(@PathVariable("cityId") int cityId) {
	    return areaService.getAllAreasByCityId(cityId);
	}
	
	/*@RequestMapping(value = "/getAreas/{dealName}", method = RequestMethod.GET)
	public @ResponseBody int getDeal(@PathVariable("dealName") String dealName) 
	{
		return 0;
	    //return areaService.getAllAreasByCityId(cityId);
	}*/
	
	@RequestMapping(value = "/getServices/{selectedServices}", method = RequestMethod.GET)
	public @ResponseBody void getAllSelectedServices(@PathVariable("selectedServices") long[] selectedServices) 
	{
	    Booking b = new Booking();
	    b.setSelectedServices(selectedServices);
	}
	
	@RequestMapping("/residentialform")
	public String residentialform(Model model)
	{
		Booking b = new Booking();
		//HashMap<Long, String> map = new HashMap<Long, String>();
		
		int i=0;
		List<Service> services = serviceService.getAll();
		long ss[] = new long[services.size()];
		for (Service s : services) 
		{
			//System.out.println(s.getServiceId());
			ss[i] = s.getServiceId();
			i++;
        }
		b.setSelectedServices(ss);
		List<City> cities = cityService.getAll();
		List<Area> areas = areaService.getAllAreasByCityId((int)b.getCityId());
		model.addAttribute("cities", cities);
		model.addAttribute("areas",areas);
		model.addAttribute("booking", b);
		//model.addAttribute("services", map);
		model.addAttribute("services", services);
		return "residentialform";
	}
	
	@RequestMapping("/findMaid")
	public String findMaid(@ModelAttribute("booking") Booking booking, BindingResult result, Model model)
	{
		Booking book = bookingService.findMaid(booking);
		if(book==null)
		{
			model.addAttribute("errorMsg", "Sorry no maids are available for these dates!!");
			return "redirect:/user/residentialform";
		}
		
		Booking b = bookingService.add(booking, book.getMaidId());
		long id = b.getBookingId();
		return "redirect:/user/bookingdetails/"+id;
			
	}
	
	
	/*@RequestMapping("/bookingdetails")
	public String bookingdetails(Model model)
	{
		Booking b1 = bookingService.getDetails();
		List<SelectedServices> s = selectedServicesDao.getDetails(b1.getBookingId());
		//Booking b = new Booking();
		model.addAttribute("bookingdet", b1);
		model.addAttribute("services", s);
		return "bookingdetails";
	}*/
	
	@RequestMapping(value = "/getTotalAmount/{dealCode}", method = RequestMethod.GET)
	public @ResponseBody double getTotalAmount(@PathVariable("dealCode") String dealCode) 
	{
	    return bookingService.checkCode(dealCode);
	}
	
	@RequestMapping("/bookingdetails/{id}")
	public String bookingdetailsByID(@PathVariable("id") int id,Model model)
	{
		Booking b1 = bookingService.getDetailsById(id);
		List<SelectedServices> s = selectedServicesDao.getDetails(id);
		model.addAttribute("bookingdet", b1);
		model.addAttribute("services", s);
		return "bookingdetails";
	}
	
	@RequestMapping("/mybookingdetails/{id}")
	public String mybookingdetailsByID(@PathVariable("id") int id,Model model)
	{
		Booking b1 = bookingService.getDetailsById(id);
		List<SelectedServices> s = selectedServicesDao.getDetails(id);
		model.addAttribute("bookingdet", b1);
		model.addAttribute("services", s);
		return "mybookingdetails";
	}
}
