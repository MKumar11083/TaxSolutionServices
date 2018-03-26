package com.tss.service;

import java.util.List;

import com.tss.model.UserProfile;



public interface UserProfileService {

	UserProfile findById(int id);

	UserProfile findByType(String type);
	
	List<UserProfile> findAll();
	
}
