package com.test.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.dao.ProductDao;
import com.test.model.Product;
import com.test.service.ProductsService;
@Service
public class ProductsServiceImpl implements ProductsService {

	@Autowired
	private ProductDao productDAO;
	@Transactional
	public void add(Product products) {
		productDAO.add(products);

	}

	@Transactional
	public void edit(Product products) {
		productDAO.edit(products);

	}

	@Transactional
	public void delete(int productId) {
		productDAO.delete(productId);	

	}

	@Transactional
	public Product getProduct(int productId) {
		return productDAO.getProduct(productId);
	}
	@Transactional
	public List getAllProducts() {
		return productDAO.getAllProducts();
	}

}
