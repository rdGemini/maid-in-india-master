package com.mii.model;

import java.sql.Date;
import java.sql.Time;
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
@Table(name="selectedservices")
@Getter
@Setter
@AllArgsConstructor
@ToString
@Data
@NoArgsConstructor
public class SelectedServices {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long selectedServiceId;
	private long bookingId;
	private long serviceId;
	
	@Transient
	private String name;
	@Transient
	private double charges;
	@Transient
	private double amount;
}
