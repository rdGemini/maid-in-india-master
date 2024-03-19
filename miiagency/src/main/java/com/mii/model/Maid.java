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
@Table(name="maidmaster")
@Getter
@Setter
@AllArgsConstructor
@ToString
@Data
@NoArgsConstructor
public class Maid {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long maidId;
	
	private String emailId;
	private String password;
	private String name;
	private String address1;
	private String address2;
	private long phoneNo;
	private String gender;
	private long agencyId;	
	//@DateTimeFormat(pattern = "dd/MM/yyyy")
	//@Temporal(TemporalType.TIMESTAMP)
	private Date DOB;
	private int areaId;
	private String profilePicture;
	private String idProof;
	private String backgroundCheck;
	private int rating;
	private int availability;
	private String starttime;
	private String endtime;
	private String bankName;
	private String ifsc;
	private long accNo;
	private String branchName;
	private long mainServiceId;
	private long createdBy;
	@Transient
	private Date createdDate;
	private long modifiedBy;
	@Transient
	private Date modifiedDate;
	private int isDeleted=0;
	private int isActive=1;
	@Transient
	private MultipartFile profilePictureImage;
	@Transient
	private MultipartFile idProofImage;
	@Transient
	private MultipartFile backgroundCheckImage;
	@Transient
	private String npassword;
	@Transient
	private String cpassword;
	@Transient
	private String pincode;
	@Transient
	private long cityId;

	}
