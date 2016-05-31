package com.test.dao.impl;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.dao.RoleDAO;
import com.test.model.Roles;
@Repository
public class RoleDAOImpl implements RoleDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public void addRole(Roles r) {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.save(r);
		session.flush();
		tx.commit();
		
		
	}

}
