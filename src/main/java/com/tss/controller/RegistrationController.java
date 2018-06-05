package com.tss.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.util.UriComponentsBuilder;

import com.tss.model.User;
import com.tss.model.UserProfile;
import com.tss.model.UserRegistration;
import com.tss.service.UserProfileService;
import com.tss.service.UserRegistrationService;
import com.tss.service.UserService;




@RestController
public class RegistrationController {

	@Autowired
	UserService userService;
	
	@Autowired
	UserRegistrationService userRegistrationService;
	
	@Autowired
	UserProfileService userProfileService;
	
	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;
	
	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;
	
	

	/*@RequestMapping(value = { "/registration" }, method = RequestMethod.GET)
	public ResponseEntity<Void> createUser(@RequestBody UserRegistration user,    UriComponentsBuilder ucBuilder) {
	       //System.out.println("Creating User " + userRegistrationService.getUsername());
	    
	       if (userRegistrationService.isUserExist(user)) {
	           // System.out.println("A User with name " + user.getUsername() + " already exist");
	            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
	        }
	       userRegistrationService.saveUser(user);
	        HttpHeaders headers = new HttpHeaders();
	        headers.setLocation(ucBuilder.path("/user/{id}").buildAndExpand(user.getUSER_ID()).toUri());
	        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
		
		//return "redirect:/persons";
	}*/
	
	
	
	
}