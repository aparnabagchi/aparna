package com.test.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

//user bean for signup
@Entity
@Table(name="User")
public class User implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	private int userId;

	  @NotEmpty(message = "Please enter your user_name.")
	    @Size(min = 6, max = 15, message = "Your user_name must between 6 and 15 characters")
	private String username;

    @NotEmpty(message = "Please enter your password.")
    @Size(min = 6, max = 15, message = "Your password must between 6 and 15 characters")
	private String password;
	private String role="ROLE_USER";
	private boolean enabled=true;

    @NotNull(message = "Please enter your ADDRESS")
    @Size(min = 6, max = 15 ,message = "Your address must between 6 and 15 characters")
	private String address;
	
	public void setUsername(String username){
		this.username=username;
		
	}
	public String getUsername(){
		return username;
	}
	
	public void setPassword(String password){
		this.password=password;
		
	}
	public String getPassword(){
		return password;
	}
	public void setEnabled(boolean enabled){
		this.enabled=true;
		
	}
	public boolean getEnabled(){
		return enabled;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
}
