package com.test;

import java.io.Serializable;

public class projModel implements Serializable {
String ProductId;
String GroupName;
String productName;
int productPrice;
int productUnit;
String Description;
String Image;
public String getProductId() {
	return ProductId;
}

public String getGroupName() {
	return GroupName;
}
public String getProductName() {
	return productName;
}

public int getProductPrice() {
	return productPrice;
}

public int getProductUnit() {
	return productUnit;
}

public String getDescription() {
	return Description;
}
public String getImage() {
	return Image;
}
@Override
public String toString() {
	return "{Product_Id:\"" + ProductId + "\", Group_Name:\"" + GroupName + "\", Name:\"" + productName + "\", Price:" + productPrice
	+ ", Qty:" + productUnit + ", Description:\"" + Description + "\", Image:\"" + Image + "\"}";

}

public projModel(String productId, String groupName, String productName, int productPrice, int productUnit,
		String description, String image) {
	super();
	ProductId = productId;
	GroupName = groupName;
	this.productName = productName;
	this.productPrice = productPrice;
	this.productUnit = productUnit;
	Description = description;
	Image = image;
}





}

