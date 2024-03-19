package com.mii.serviceimpl;

import java.util.List;
import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.Calendar;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mii.dao.BookingDao;
import com.mii.dao.DealsDao;
import com.mii.dao.SelectedServicesDao;
import com.mii.dao.ServiceDao;
import com.mii.model.Booking;
import com.mii.model.Deals;
import com.mii.model.Maid;
import com.mii.model.SelectedServices;
import com.mii.model.User;
import com.mii.service.BookingService;
import com.mii.service.UserService;
import com.mii.util.CommonUtils;
import com.mii.util.Mailer;

@Service("bookingService")
@Transactional
@SessionAttributes("user")
public class BookingServiceImpl implements BookingService {

	@Autowired
	BookingDao bookingDao;
	
	@Autowired
	ServiceDao serviceDao;
	
	@Autowired
	DealsDao dealsDao;
	
	@Autowired
	SelectedServicesDao selectedServicesDao;
	
	@Autowired
	HttpSession session;
	
	/*@Override
	public Booking add(Booking booking, Model model) 
	{	
		User user = (User) session.getAttribute("user");
		booking.setUserId(user.getUserId());
		booking.setStatus("Registered");
		//List<Maid> m = bookingDao.getMaid(booking.getDateOfBooking());
		//Maid m1 = m.get(0);
		//booking.setMaidId(m1.getMaidId());
		Booking b = bookingDao.saveObject(booking);
		SelectedServices s = new SelectedServices();
		for(long sid: booking.getSelectedServices())
		{
			s.setBookingId(booking.getBookingId());
			s.setServiceId(sid);
			com.mii.model.Service c = serviceDao.getCharges(sid);
			s.setPrice(c.getCharges());
			selectedServicesDao.saveObject(s);
		}
		SelectedServices amount = selectedServicesDao.getAmount(b.getBookingId());
		booking.setAmount(amount.getAmount().doubleValue());
		booking.setTotal(amount.getAmount().doubleValue());
		//Booking b1 = bookingDao.getAmount(b.getBookingId());
		//double a = amount.getAmount();
		//booking.setAmount(b1.getAmount());
		b = bookingDao.updateObject(booking);
		return b;
	}*/
	
	@Override
	public Booking add(Booking booking, long maidId) 
	{
		/*User user = (User) session.getAttribute("user");
		booking.setUserId(user.getUserId());
		booking.setStatus("Registered");
		Booking b = bookingDao.saveObject(booking);
		return b;	*/
		User user = (User) session.getAttribute("user");
		String sTime = booking.getStartTime();
		Date sDate = booking.getDateOfBooking();
		Date eDate = getEndDate(booking); 
		String eTime = getEndTime(booking);
		booking.setEndDateOfBooking(eDate);
		booking.setEndTime(eTime);
		//Booking b = bookingDao.findMaid(booking);
		booking.setUserId(user.getUserId());
		booking.setMaidId(maidId);
		booking.setStatus("Registered");
		double amount = getAmount(booking);
		booking.setAmount(amount);
		booking.setTotal(amount);
		Booking book = bookingDao.saveObject(booking);
		SelectedServices s = new SelectedServices();
		for(long sid: booking.getSelectedServices())
		{
			s.setBookingId(booking.getBookingId());
			s.setServiceId(sid);
			com.mii.model.Service c = serviceDao.getCharges(sid);
			s.setPrice(c.getCharges());
			selectedServicesDao.saveObject(s);
		}
		return book;
	}

	private double getFinalTotalAmount(Booking booking) {
		
		return (booking.getAmount() - 0);
	}

	private double getAmount(Booking booking) {
		String serviceInClause = CommonUtils.getIntInClause(booking.getSelectedServices());
		List<com.mii.model.Service> listOfServices = serviceDao.getAllDataByInClauseId(serviceInClause);
		double amount = 0;
		for (com.mii.model.Service service : listOfServices) {
			if("Room".equals(service.getBaseForCalc()))
				amount += (service.getCharges() * booking.getBedrooms());
			else
				amount +=  (service.getCharges() * booking.getMembers());			
		}
		amount = amount * booking.getNoOfDays();
		return amount;
	}

	private Date getEndDate(Booking booking) {
		
		Date sDate = booking.getDateOfBooking();
		int numberOfDays = booking.getNoOfDays();
		LocalDate date = sDate.toLocalDate();
		return Date.valueOf(date.plusDays(numberOfDays));
	}

	private String getEndTime(Booking booking) {
		
		String[] sTime = booking.getStartTime().split(":");
		int sTimeHour = Integer.valueOf(sTime[0]);
		int sTimeMin = Integer.valueOf(sTime[1]);
		int totalStartMins = (sTimeHour*60)+ sTimeMin;
		String serviceInClause = CommonUtils.getIntInClause(booking.getSelectedServices());
		List<com.mii.model.Service> listOfServices = serviceDao.getAllDataByInClauseId(serviceInClause);
		int timeTaken = 0;
		for (com.mii.model.Service service : listOfServices) {
			if("Room".equals(service.getBaseForCalc()))
				timeTaken += (service.getTimeTaken()*booking.getBedrooms());
			else
				timeTaken += (service.getTimeTaken()*booking.getMembers());			
		}
		timeTaken = totalStartMins + timeTaken;
		
		Integer hrs= timeTaken/60;
		Integer mins =timeTaken%60;
		String duration = hrs.toString()+":"+mins.toString();
		
		
		return duration;
	}

	@Override
	public Booking findMaid(Booking booking) {
		User user = (User) session.getAttribute("user");
		String sTime = booking.getStartTime();
		Date sDate = booking.getDateOfBooking();
		Date eDate = getEndDate(booking); 
		String eTime = getEndTime(booking);
		booking.setEndDateOfBooking(eDate);
		booking.setEndTime(eTime);
		Booking b = bookingDao.findMaid(booking);
	    return b;		
	}
	
	@Override
	public Booking getDetails() {
		Booking b = bookingDao.getActive();
		return b;
	}

	@Override
	public List<Booking> getAll() {
		List<Booking> booking = bookingDao.getDetails();
		return booking;
	}

	@Override
	public Booking getDetailsById(int id) {
		Booking b = bookingDao.getActiveById(id);
		//Mailer.send("maidinindia03@gmail.com", "mii@41926", user.getEmailId(), "OTP for changing password", otp);
		return b;
	}

	@Override
	public double checkCode(String dealCode) {
		Deals d = dealsDao.checkDeal(dealCode);
		if (d != null)
		{
			double discountRate = d.getDiscountRate();
			return discountRate;
		}
		return 0;
	}

}
/*SelectedServices s = new SelectedServices();
		for(long sid: booking.getSelectedServices())
		{
			s.setBookingId(booking.getBookingId());
			s.setServiceId(sid);
			com.mii.model.Service serv = serviceDao.getCharges(sid);
			if(serv.getBaseForCalc().equals("Room"))
			{
				s.setPrice(serv.getCharges() * booking.getBedrooms());
				s.setTime(booking.getBedrooms() * serv.getTimeTaken());
			}
			else
			{
				s.setPrice(serv.getCharges() * booking.getMembers());
				s.setTime(booking.getMembers() * serv.getTimeTaken());
			}
			//s.setPrice(serv.getCharges());
			selectedServicesDao.saveObject(s);
		SelectedServices samount = selectedServicesDao.getAmount(b.getBookingId());
		b.setAmount(samount.getPrice());
		b.setTotal(samount.getPrice());
		Integer hrs= (samount.getNoOfMins().intValue()/60);
		Integer mins =(samount.getNoOfMins().intValue()%60);
		String time = hrs.toString()+":"+mins.toString();
		b.setDuration(time);
		
		Calendar calendar = Calendar.getInstance();
	    calendar.setTime(b.getDateOfBooking());
	    calendar.add(Calendar.DAY_OF_MONTH, b.getNoOfDays()-1);
	    java.util.Date dat =calendar.getTime();	    
	    b.setEndDateOfBooking(dat);
		
	    return bookingDao.updateObject(b);
		//Booking book = bookingDao.getActiveById((int)b.getBookingId());
*/