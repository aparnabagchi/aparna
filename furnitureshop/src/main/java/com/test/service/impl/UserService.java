package com.test.service.impl;

import com.test.dao.impl.UserDAOImpl;
import com.test.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class UserService {
	@Autowired
	UserDAOImpl dao;
	public void addUser(User u){
		dao.addUser(u);
		
	}
}

