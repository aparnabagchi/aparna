package com.test.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Roles")
public class Roles implements java.io.Serializable{
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int roleId;
	private int userId;
	private String role;
	public void setRoleId(int roleId){
		this.roleId=roleId;
	}
	public int getRoleId(){
		return roleId;
	}
	public void setUserId(int userId){
		this.userId=userId;
	}
	public int getUserId(){
		return userId;
	}
	public void setRole(String role){
		this.role=role;
	}
	public String getRole(){
		return role;
	}
	
}

