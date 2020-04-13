package com.st.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.st.bean.Role;

import com.st.dao.RoleDao;
@Service("RoleS")
public class RoleService {
	@Autowired
	RoleDao roleD;
	public void addrole(Role role) {
		roleD.addrole(role);
		
	}
	public List selectallrole(Map map) {
		return roleD.selectallrole(map);
	}
	public List selectrole(Map map) {
		return roleD.selectrole(map);
	}
	public void delrole(Map map) {
		roleD.delrole(map);
		
	}
	public void updaterole(Map map) {
		roleD.updaterole(map);
		
	}

}
