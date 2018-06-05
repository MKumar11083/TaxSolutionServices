package com.tss.dao;

import java.util.List;

import com.tss.model.User;
import com.tss.model.UserRegistration;



public interface UserRegistrationDao {

	void save(UserRegistration user);
	UserRegistration findBySSO(String sso);
}

