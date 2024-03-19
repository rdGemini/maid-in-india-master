package com.mii.daoimpl;

import org.springframework.stereotype.Repository;

import com.mii.dao.FeedbackDao;
import com.mii.model.Feedback;

@Repository("feedbackDao")
public class FeedbackDaoImpl extends GenericDaoImpl<Feedback> implements FeedbackDao{

}
