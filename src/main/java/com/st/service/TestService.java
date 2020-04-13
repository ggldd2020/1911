package com.st.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.st.bean.User;
import com.st.dao.TestDao;
import com.st.service.imp.IUserService;

@Service("TestS")
public class TestService implements IUserService{
	@Autowired
	TestDao testD;
	
	
	public List treeJson() {
		return testD.treeJson();
	}

	public List selectalluser(Map map) {
		return  testD.selectalluser(map);
	}
	
	
	
	public void addBM() {
		//新增部门数据
		//新增两个部门信息  uuid  bmname----Map
		
		//事务---整体---
		Map map=new HashMap();
		UUID uuid=UUID.randomUUID();
		map.put("uuid", uuid.toString());
		map.put("bmname", "人力部");
		testD.addBM(map);
	    	
	}

	

	@Override
	public void adduser(User user) {
		testD.adduser(user);
		
	}

	public List selectuser(Map map) {
		
		return testD.selectuser(map);
	}

	public void deluser(Map map) {
		testD.deluser(map);
		
	}

	public void updateuser(Map map) {
		testD.updateuser(map);
		
	}

	@Override
	public User getuser(String username) {
		// TODO Auto-generated method stub
		return null;
	}



	
}
