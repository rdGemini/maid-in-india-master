package com.mii.model;

import java.sql.Date;

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
@Table(name="service")
@Getter
@Setter
@AllArgsConstructor
@ToString
@Data
@NoArgsConstructor
public class Service {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int serviceId;	
	private String name;
	private long charges;
	private int timeTaken;
	private String baseForCalc;
	private int additionalCharges;
	private String equipmentsNeeded;
	private int mainserviceId;
	@Transient
	private long createdBy;
	@Transient
	private Date createdDate;
	@Transient
	private long modifiedBy;
	@Transient
	private Date modifiedDate;
	private int isDeleted=0;
	private int isActive=1;
	

}
