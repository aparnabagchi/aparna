package com.test.dao.impl;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.dao.ProductDao;
import com.test.model.Product;
@Repository
@PersistenceContext
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory session;
	public List getAllProducts() {
		return session.getCurrentSession().createQuery("from Product").list(); 
	}
	public void add(Product products) {
		session.getCurrentSession().save(products);
		
	}
	public void edit(Product products) {
		session.getCurrentSession().update(products);
	}
	public void delete(int productId) {
		session.getCurrentSession().delete(productId);
		
	}
	public Product getProduct(int productId) {
		return (Product)session.getCurrentSession().get(Product.class,productId);
	}

}
