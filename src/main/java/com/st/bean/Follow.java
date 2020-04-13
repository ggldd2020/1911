package com.st.bean;

public class Follow {
	private int followid;
	private String customername;
	private String customerorder;
	private String customercash;
	private String adminname;
	private String adminposition;
	private String followmessage;
	private String followps;
	public int getFollowid() {
		return followid;
	}
	public void setFollowid(int followid) {
		this.followid = followid;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public String getCustomerorder() {
		return customerorder;
	}
	public void setCustomerorder(String customerorder) {
		this.customerorder = customerorder;
	}
	public String getCustomercash() {
		return customercash;
	}
	public void setCustomercash(String customercash) {
		this.customercash = customercash;
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
	public String getFollowmessage() {
		return followmessage;
	}
	public void setFollowmessage(String followmessage) {
		this.followmessage = followmessage;
	}
	public String getFollowps() {
		return followps;
	}
	public void setFollowps(String followps) {
		this.followps = followps;
	}
	@Override
	public String toString() {
		return "Follow [followid=" + followid + ", customername=" + customername + ", customerorder=" + customerorder
				+ ", customercash=" + customercash + ", adminname=" + adminname + ", adminposition=" + adminposition
				+ ", followmessgae=" + followmessage + ", followps=" + followps + "]";
	}
	

}
