package com.test.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.dao.CartDAO;
import com.test.model.Cart;
@Service
@Transactional
public class cartService {

	@Autowired
	private CartDAO cartDAO;
	
public void addTocart(Cart cart) {
		
		cartDAO.addTocart(cart);
	}

	
public void deleteFromCart(int cartId) {
	
	cartDAO.deleteFromCart(cartId);
}
public Cart getFromCart(int cartId) {
	
	cartDAO.getFromCart(cartId);
	return null;
}
}
