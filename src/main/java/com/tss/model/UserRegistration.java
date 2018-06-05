package com.tss.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="USER_M")
public class UserRegistration implements Serializable{

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer USER_TBL_ID;
	
	@Column(name="USER_EMAIL")
	private String userEmailId;
	
	@NotEmpty
	@Column(name="USER_PASSWORD", nullable=false)
	private String userRegPass;

	public Integer getUSER_TBL_ID() {
		return USER_TBL_ID;
	}

	public void setUSER_TBL_ID(Integer uSER_TBL_ID) {
		USER_TBL_ID = uSER_TBL_ID;
	}

	public String getUserEmailId() {
		return userEmailId;
	}

	public void setUserEmailId(String userEmailId) {
		this.userEmailId = userEmailId;
	}

	public String getUserRegPass() {
		return userRegPass;
	}

	public void setUserRegPass(String userRegPass) {
		this.userRegPass = userRegPass;
	}
	
	

}
