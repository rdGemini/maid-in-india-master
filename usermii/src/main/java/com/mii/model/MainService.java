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
@Table(name="mainservice")
@Getter
@Setter
@AllArgsConstructor
@ToString
@Data
@NoArgsConstructor
public class MainService {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int mainserviceId;	
	private String name;
	private String icon;
	@Transient
	private long createdBy;
	@Transient
	private Date createdDate;
	@Transient
	private long modifiedBy;
	@Transient
	private Date modifiedDate;
	private int isDeleted;
	private int isActive;
	

}
