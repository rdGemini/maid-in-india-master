package com.mii.model;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="usermaster")
@Getter
@Setter
@AllArgsConstructor
@ToString
@Data
@NoArgsConstructor
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long userId;	
	private String emailId;
	private String password;
	private String name;
	private String address1;
	private String address2;
	private long phoneNo;
	private String gender;
	private int areaId;
	private long createdBy;
	@Transient
	private Date createdDate;
	private long modifiedBy;
	@Transient
	private Date modifiedDate;
	private int isDeleted=0;
	private int isActive=1;
	private String otp;
	@Transient
	private String cpassword;
	@Transient
	private String npassword;
	@Transient
	private long cityId;

}
