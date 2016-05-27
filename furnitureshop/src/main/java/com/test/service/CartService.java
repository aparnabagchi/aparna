package com.test.service;

import com.test.model.Cart;

public interface CartService {
	 Cart getCartById(int cartId);

	    void update(Cart cart);
}
