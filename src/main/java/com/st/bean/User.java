package com.st.bean;

import java.util.ArrayList;
import java.util.List;

public class User {
	private int userid;
	private String username;
	private String usersex;
	private String userage;
	private String userhometown;
	private String role_name;
	private String usertel;
	private String userinfo;
	private List   roles;
	
	public List getRoles() {
		return roles;
	}
	public void setRoles(List roles) {
		this.roles = roles;
	}
	public String getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(String userinfo) {
		this.userinfo = userinfo;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsersex() {
		return usersex;
	}
	public void setUsersex(String usersex) {
		this.usersex = usersex;
	}
	public String getUserage() {
		return userage;
	}
	public void setUserage(String userage) {
		this.userage = userage;
	}
	public String getUserhometown() {
		return userhometown;
	}
	public void setUserhometown(String userhometown) {
		this.userhometown = userhometown;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public String getUsertel() {
		return usertel;
	}
	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}
	/**
	 * 获得用户所有权限
	 * @return
	 */
	public List getAllPermissions() {
		List list =new ArrayList();
		for(int i=0;i<roles.size();i++) {
			Role role=(Role)roles.get(i);
			list.addAll(role.getPermissions());
		}
		return list;
		
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", usersex=" + usersex + ", userage=" + userage
				+ ", userhometown=" + userhometown + ", role_name=" + role_name + ", usertel=" + usertel + ", userinfo="
				+ userinfo + ", roles=" + roles + "]";
	}
	

}
