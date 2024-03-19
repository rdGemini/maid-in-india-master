package com.mii.service;

import com.mii.model.Payment;

public interface PaymentService {

	public String registerPayment(Payment payment);

	public String registerCODPayment(Payment payment);

}

