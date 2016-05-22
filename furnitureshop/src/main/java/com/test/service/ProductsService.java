package com.test.service;
import java.util.List;

import com.test.model.Product;



public interface ProductsService {

	public void add(Product products);
	public void edit(Product products);
	public void delete(int productId);
	public Product getProduct(int productId);
	public List getAllProducts();
}
