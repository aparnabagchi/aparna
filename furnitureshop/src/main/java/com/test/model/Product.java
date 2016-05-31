package com.test.model;



import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "PRODUCT")
public class Product implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int productId;
	public Product() {
		// TODO Auto-generated constructor stub
	}

	
	@Column
	private String groupName;
	@Column
	private String name;
	@Column
	private double price;
	@Column
	private int quantity;
	@Column
	private String description;
	
	@Transient
	private MultipartFile image;
	public MultipartFile getImage() {
	return image;
	}
	public void setImage(MultipartFile image) {
	this.image = image;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getProductId() {
		return productId;
	}
	
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	/*
	public String toString() {
		
		return "[ productId:\""+productId+"\",groupName:\""+groupName+"\",name:\""+name+"\",price:\""+price+"\",quantity:\""+quantity+"\",description:\""+description+"\",imagePath:\""+imagePath+"]";
	}
	*/
}

