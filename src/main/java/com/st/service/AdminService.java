package com.st.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.st.bean.Admin;
import com.st.dao.AdminDao;

@Service
public class AdminService {
@Autowired
AdminDao adminD;
	public List selectadmin(Map map) {
		
		return adminD.selectadmin(map);
	}
	public void deladmin(Map map) {
		adminD.deladmin(map);
		
	}
	public void updateadmin(Map map) {
		adminD.updateadmin(map);
		
	}
	public List selectalladmin(Map map) {
		
		return adminD.selectalladmin(map);
	}
	public void addadmin(Admin admin) {
		adminD.addadmin(admin);
		
	}

}
