package com.st.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.st.dao.CustomerDao;
@Service("CustomerS")
public class CustomerService {
	@Autowired
	CustomerDao customerD;
	public List selectallcustomer(Map map) {
		return customerD.selectallcustomer(map);
	}
	public List selectcustomer(Map map) {
		return customerD.selectcustomer(map);
	}
	public void delcustomer(Map map) {
		customerD.delcustomer(map);
		
	}
	public void updatecustomer(Map map) {
		customerD.updatecustomer(map);
		
	}
	public void addcustomer(Map map) {
		customerD.addcustomer(map);
		
	}

}
