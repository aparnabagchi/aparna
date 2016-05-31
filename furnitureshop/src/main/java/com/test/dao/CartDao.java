package com.test.dao;

import com.test.model.Cart;
public interface CartDAO {

	public void addTocart(Cart cart);
	public void deleteFromCart(int cartId);
	public Cart getFromCart(int cartId);
}

