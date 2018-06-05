package com.tss.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.tss.model.User;
import com.tss.model.UserRegistration;




@Repository("userRegistrationDao")
public class UserRegistrationDaoImpl extends AbstractDao<Integer, UserRegistration> implements UserRegistrationDao {

	static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
	
	public void save(UserRegistration user) {
		persist(user);
	}

	public UserRegistration findBySSO(String sso) {
		logger.info("SSO : {}", sso);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("ssoId", sso));
		UserRegistration user = (UserRegistration)crit.uniqueResult();
		/*if(user!=null){
			Hibernate.initialize(user.getUserProfiles());
		}*/
		return user;
	}
}
