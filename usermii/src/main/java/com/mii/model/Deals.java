package com.mii.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="deal")
@Getter
@Setter
@AllArgsConstructor
@ToString
@Data
@NoArgsConstructor
public class Deals {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int dealId;	
	private String name;
	private String code;
	private String photo;
	private String eligibility;
	private Date startDuration;
	private Date endDuration;
	private long discountRate;
	private long createdBy;
	private Date createdDate;
	private long modifiedBy;
	private Date modifiedDate;
	private int isDeleted;
	private int isActive;
	

}
