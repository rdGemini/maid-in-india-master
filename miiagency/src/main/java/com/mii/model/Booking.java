package com.mii.model;

import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="booking")
@Getter
@Setter
@AllArgsConstructor
@ToString
@Data
@NoArgsConstructor
public class Booking {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long bookingId;
	
	private String genderPreference;
	private String additionalNote;
	private Date dateOfBooking;
	private int noOfDays;
	private long paymentId;
	//private long serviceId;
	private long maidId;
	private long dealId;
	private long userId;
	private String startTime;
	private Timestamp duration;
	private double amount;
	//extra details
	private String address1;
	private String address2;
	private String status;
	@Transient
	private long cityId;
	private long areaId;
	private int bedrooms;
	private int members;
	@Transient
	private long agencyId;
	@Transient
	private String cname;
	@Transient
	private String uname;
	@Transient
	private String mname;
	@Transient
	private String mProPic;
	@Transient
	private long mMobNo;
	@Transient
	private long uMobNo;
	@Transient
	private long[] selectedServices;
	@Transient
	private String address;
	@Transient
	private String mainService;
	@Transient
	private String mstrno;
	@Transient
	private String ustrno;

}
