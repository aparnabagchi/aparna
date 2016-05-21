package com.test;


import java.util.ArrayList;

public class products_collect {
	ArrayList al = new ArrayList();

	public products_collect() {
		al.add(new projModel(1001, "Plucked Strings", "Sitar", 3000, 4, "Plucked Strings instrument", "resources/images/images.jpg"));
		al.add(new projModel(1002, "Bowed Strings", "sarinda", 2000, 5, "Bowed Strings instrument", "resources/images/images1.jpg"));
		al.add(new projModel(1003, "Plucked Strings", "Ektara", 1000, 8, "Plucked Strings instrument", "resources/images/images3.jpg"));
	}
	@Override
	public String toString() {
		
		String retval = "";
		
		for( Object x: al )
		{
			retval += x + ",";
		}
		
		retval = "[" + retval.substring(0, retval.length()-1) + "]";
		
		return retval;
	}
		
		}

	
	

