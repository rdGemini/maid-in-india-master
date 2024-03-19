package com.mii.model;

import java.sql.Date;

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
@Table(name="adminmaster")
@Getter
@Setter
@AllArgsConstructor
@ToString
@Data
@NoArgsConstructor
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long adminId;
	private String emailId;
	private String name;
	private String password;
	private String address1;
	private String address2;
	private long phoneNo;
	private int isDeleted=0;
	private int isActive=1;
	private String profilePicture;
	private String idProof;
	//@Temporal(TemporalType.TIMESTAMP)
	//private Date dob;
	private long areaId;
	private long createdBy;
	private long modifiedBy;
	@Transient
	private Date createdDate;
	@Transient
	private Date modifiedDate;
	@Transient
	private long cityId;
	@Transient
	private String npassword;
	@Transient
	private String cpassword;
	@Transient
	private MultipartFile profileImage; 
	@Transient
	private MultipartFile idProofImage;
			
}
