package com.mii.model;

import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Column;
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
@Table(name="city")
@Getter
@Setter
@AllArgsConstructor
@ToString
@Data
@NoArgsConstructor
public class City {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long cityId;
	
	@Column(name = "name")
	private String name;
	private long stateId;
	private long createdBy;
	private long modifiedBy;
	@Transient
	private Date createdDate;
	@Transient
	private Date modifiedDate;
	private int isDeleted=0;
	private int isActive=1;
	@Transient
	private String sname;

	}
