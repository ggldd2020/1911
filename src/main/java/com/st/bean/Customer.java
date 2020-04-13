package com.st.bean;

public class Customer {
	private int customerid;
	private String customername;
	private String customertel;
	private String customertype;
	private String customerorder;
	private String customerlastvisit;
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public String getCustomertel() {
		return customertel;
	}
	public void setCustomertel(String customertel) {
		this.customertel = customertel;
	}
	public String getCustomertype() {
		return customertype;
	}
	public void setCustomertype(String customertype) {
		this.customertype = customertype;
	}
	public String getCustomerorder() {
		return customerorder;
	}
	public void setCustomerorder(String customerorder) {
		this.customerorder = customerorder;
	}
	public String getCustomerlastvisit() {
		return customerlastvisit;
	}
	public void setCustomerlastvisit(String customerlastvisit) {
		this.customerlastvisit = customerlastvisit;
	}
	@Override
	public String toString() {
		return "Customer [customerid=" + customerid + ", customername=" + customername + ", customertel=" + customertel
				+ ", customertype=" + customertype + ", customerorder=" + customerorder + ", customerlastvisit="
				+ customerlastvisit + "]";
	}
	

}
