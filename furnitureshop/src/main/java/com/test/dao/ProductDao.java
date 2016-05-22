package com.test.dao;

import java.util.List;

import com.test.model.Product;

public interface ProductDao {

	public void add(Product products);
	public void edit(Product products);
	public void delete(int productId);
	public Product getProduct(int productId);
	public List getAllProducts();
}
