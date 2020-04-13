package com.st.bean;

import java.util.List;

public class Role {
	private int role_id;
	private String role_name;
	private String role_power;
	private List permissions;
	
	
	public List getPermissions() {
		return permissions;
	}
	public void setPermissions(List permissions) {
		this.permissions = permissions;
	}
	public int getRole_id() {
		return role_id;
	}
	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public String getRole_power() {
		return role_power;
	}
	public void setRole_power(String role_power) {
		this.role_power = role_power;
	}
	
	
	@Override
	public String toString() {
		return "Role [role_id=" + role_id + ", role_name=" + role_name + ", role_power=" + role_power + "]";
	}
	
	

}
