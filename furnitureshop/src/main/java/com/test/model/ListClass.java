package com.test.model;

import java.util.ArrayList;
import java.util.List;

public class ListClass {

private List<Product> list = new ArrayList<Product>();
	
	{
		Product m1=new Product(101, "Classicla", "Guitar", 200, 4, "My guitar", "resources/images/products/guitar.jpg");
		Product m2=new Product(102, "Classicla", "Guitar", 200, 4, "My guitar", "resources/images/products/guitar.jpg");
		Product m3=new Product(1010, "Classicla", "Guitar", 200, 4, "My guitar", "resources/images/products/secong.jpg");
		Product m4=new Product(1290, "Classicla", "Guitar", 200, 4, "My guitar", "resources/images/products/third.jpg");
		
		list.add(m1);
		list.add(m2);
		list.add(m3);
		list.add(m4);
		
		
	}
	
	public List<Product> getlist()
	{
		return list;
	}

}
