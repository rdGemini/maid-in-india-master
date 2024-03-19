package com.mii.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.ForeignKey;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="agencymaster")
@Getter
@Setter
@AllArgsConstructor
@ToString
@Data
@NoArgsConstructor
public class Agency {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long agencyId;
	
	private String emailId;
	private String password;
	private String name;
	private String address1;
	private String address2;
	//@ForeignKey(name = "Area")
	
	private long areaId;
	private long phoneNo;
	private String bankName;
	private String ifsc;
	private long accNo;
	private String branchName;
	//private long paymentModeId;
	private String certificate;
	private long createdBy;
	private Date createdDate;
	private long modifiedBy;
	private Date modifiedDate;
	private int isDeleted=0;
	private int isActive=1;
	@Transient
	private MultipartFile certificateImage;
	@Transient
	private String npassword;
	@Transient
	private String cpassword;
	@Transient
	private String pincode;
	@Transient
	private long cityId;
	
	}
