package com.st.bean;

public class Visit {
	private int visitid;
	private String visitname;
	private String visittel;
	public int getVisitid() {
		return visitid;
	}
	public void setVisitid(int visitid) {
		this.visitid = visitid;
	}
	public String getVisitname() {
		return visitname;
	}
	public void setVisitname(String visitname) {
		this.visitname = visitname;
	}
	public String getVisittel() {
		return visittel;
	}
	public void setVisittel(String visittel) {
		this.visittel = visittel;
	}
	@Override
	public String toString() {
		return "Visit [visitid=" + visitid + ", visitname=" + visitname + ", visittel=" + visittel + "]";
	}
	

}
