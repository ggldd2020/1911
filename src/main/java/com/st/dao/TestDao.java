package com.st.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.st.bean.User;
@Repository("TestD")
public interface TestDao {
	
	void addBM(Map params);
	
	List treeJson();
	
	List selectalluser(Map map);

	void adduser(User user);

	List selectuser(Map map);

	void deluser(Map map);

	void updateuser(Map map);

}
