package com.test.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



import com.test.dao.UserDAO;
import com.test.model.User;
@Repository
public class UserDAOImpl implements UserDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	public void addUser(User u){
		
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.save(u);
		session.flush();
		tx.commit();
	}

}
