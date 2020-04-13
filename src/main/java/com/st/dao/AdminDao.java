package com.st.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.st.bean.Admin;

@Repository("AdminD")
public interface AdminDao {

	List selectadmin(Map map);

	void deladmin(Map map);

	void updateadmin(Map map);

	List selectalladmin(Map map);

	void addadmin(Admin admin);

}
