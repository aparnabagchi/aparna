package com.test.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.model.Roles;
import com.test.model.User;
import com.test.service.impl.RoleService;
import com.test.service.impl.UserService;


@Controller
public class userController {	
	@Autowired
	RoleService rs;
	@Autowired
	UserService us;
	
	public userController(){}
	
	public userController(UserService us) {
		// TODO Auto-generated constructor stu
		this.us = us;
		
	}
	public userController(RoleService rs) {
		// TODO Auto-generated constructor stu
		this.rs = rs;
		
	}
	

		
	/*
			@RequestMapping("/adduser")
			public String addNewProduct(@ModelAttribute("instuser") User pb , BindingResult result)
			{
				//ProductsServiceImpl psl=new ProductsServiceImpl();
				us.addUser(pb);
				return "index";
			}
	
		*/
	@RequestMapping(value = "/signUp")
	public String show(@ModelAttribute("instuser") User u,BindingResult result){
		System.out.println("register");
		return "signUp";
	}		
		
		
		 @RequestMapping(value = "/adduser", method = RequestMethod.GET)
		    public String viewLogin(Map<String, Object> model) {
		        User user = new User();
		        user.setEnabled(true);
		        model.put("instuser", user);
		        return "signUp";
		    }
		 
		 @RequestMapping(value="/adduser", method = RequestMethod.POST)
			public String addusert(@Valid @ModelAttribute("instuser") User u , BindingResult result, Map<String, Object> model)
			{
				
					
				if (result.hasErrors()) {
		            return "/signUp";
		        }
				else{
				us.addUser(u);
				Roles r = new Roles();
				r.setRole("ROLE_USER");
				r.setUserId(u.getUserId());
				rs.addRole(r);
		        return "Login";
				}
			}}
