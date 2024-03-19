package com.mii.serviceimpl;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mii.dao.FeedbackDao;
import com.mii.model.Feedback;
import com.mii.service.FeedbackService;
import com.mii.util.Mailer;

@Service("feedbackService")
@Transactional
public class FeedbackServiceImpl implements FeedbackService{

	@Autowired
	FeedbackDao feedbackDao;
	
	String maidRegistration = "http://localhost:8081/miimaid/maid/registerMaid";
	
	@Override
	public int addData(Feedback feedback) {
		
		feedback.setCreatedDate(new Date(System.currentTimeMillis()));
		feedbackDao.saveObject(feedback);
		Mailer.send("maidinindia03@gmail.com", "mii@41926", feedback.getEmailId(),"Maid In India", "Thank you "+feedback.getName()+" for giving this feedback!!!");
		return 0;
	}

	@Override
	public int sendMail(Feedback feedback) {
		Mailer.send("maidinindia03@gmail.com", "mii@41926", feedback.getEmailId(),"Maid In India", "Thank you "+feedback.getName()+" for using Maid In India!!! \n Here is your link for registration as maid!!!\n"+maidRegistration);
		return 0;
	}

}
