package com.mii.service;

import com.mii.model.Feedback;

public interface FeedbackService {

	int addData(Feedback feedback);

	int sendMail(Feedback feedback);

}
