package com.tss.service;

import java.util.List;

import com.tss.model.User;
import com.tss.model.UserRegistration;



public interface UserRegistrationService {
	
	boolean isUserSSOUnique(String sso);
	public boolean isUserExist(UserRegistration user);
	void saveUser(UserRegistration user);
	UserRegistration findBySSO(String sso);
}