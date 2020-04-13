package com.st.bean;

public class Admin {
	private int adminid;
	private String admintype;
	private String adminname;
	private String adminposition;
	private String admintel;
	private String adminsex;
	private String adminage;
	public int getAdminid() {
		return adminid;
	}
	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}
	public String getAdmintype() {
		return admintype;
	}
	public void setAdmintype(String admintype) {
		this.admintype = admintype;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getAdminposition() {
		return adminposition;
	}
	public void setAdminposition(String adminposition) {
		this.adminposition = adminposition;
	}
	public String getAdmintel() {
		return admintel;
	}
	public void setAdmintel(String admintel) {
		this.admintel = admintel;
	}
	public String getAdminsex() {
		return adminsex;
	}
	public void setAdminsex(String adminsex) {
		this.adminsex = adminsex;
	}
	public String getAdminage() {
		return adminage;
	}
	public void setAdminage(String adminage) {
		this.adminage = adminage;
	}
	@Override
	public String toString() {
		return "Admin [adminid=" + adminid + ", admintype=" + admintype + ", adminname=" + adminname
				+ ", adminposition=" + adminposition + ", admintel=" + admintel + ", adminsex=" + adminsex
				+ ", adminage=" + adminage + "]";
	}
	
	

}
