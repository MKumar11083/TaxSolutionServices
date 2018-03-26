package com.tss.dao;

import java.util.List;

import com.tss.model.UserProfile;



public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
