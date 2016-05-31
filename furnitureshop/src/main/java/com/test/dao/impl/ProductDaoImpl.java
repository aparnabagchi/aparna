package com.test.dao.impl;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
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
		System.out.println(products.getProductId());
		Session s=session.openSession();
		Transaction t=s.beginTransaction();
		Product pd=(Product)s.get(Product.class, new Integer(products.getProductId()));
		pd.setProductId(products.getProductId());
		pd.setName(products.getName());
		pd.setGroupName(products.getGroupName());
		pd.setPrice(products.getPrice());
		pd.setQuantity(products.getQuantity());
		pd.setDescription(products.getDescription());
		s.saveOrUpdate(pd);
		s.flush();
		t.commit();
		s.close();
	}
	public void delete(int productId) {

		Session s=session.openSession();
		Transaction tx= s.beginTransaction();
		Product pb =(Product) s.get(Product.class , new Integer(productId));
	s.delete(pb);
	s.flush();
	tx.commit();
	s.close();
		
		
	}
	public Product getProduct(int productId) {
		return (Product)session.getCurrentSession().get(Product.class,productId);
	}

}
