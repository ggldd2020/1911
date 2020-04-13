package com.st.util;

import java.util.HashMap;
import java.util.Map;

public class FileRJSON {
	private String code="0";
	private String msg="";
	private Map data=new HashMap();
	
	public FileRJSON(String src) {
		data.put("src", src);
	}
	
	public void addSRC(String src) {
		data.put("src", src);
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Map getData() {
		return data;
	}
	public void setData(Map data) {
		this.data = data;
	}

}
