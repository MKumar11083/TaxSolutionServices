package com.tss.service;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tss.configuration.HibernateConfiguration;
import com.tss.dao.UserDao;
import com.tss.dao.UserRegistrationDao;
import com.tss.model.User;
import com.tss.model.UserRegistration;



@Service("userRegistrationService")
@Transactional
public class UserRegistrationServiceImpl implements UserRegistrationService{

	private static final AtomicLong counter = new AtomicLong();
	@Autowired
	private UserRegistrationDao dao;

	@Autowired
    private PasswordEncoder passwordEncoder;
	
	public void saveUser(UserRegistration user) {
		user.setUserRegPass(passwordEncoder.encode(user.getUserRegPass()));
		dao.save(user);
	}
	
	public boolean isUserExist(UserRegistration user) {
		return null != null;
	}
	
	public boolean isUserSSOUnique(String sso) {
		UserRegistration user = findBySSO(sso);
		return ( user == null);
	}
	
	public UserRegistration findBySSO(String sso) {
		UserRegistration user = dao.findBySSO(sso);
		return user;
	}
}
