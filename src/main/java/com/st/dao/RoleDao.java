package com.st.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.st.bean.Role;
@Repository("RoleD")
public interface RoleDao {

	void addrole(Role role);

	List selectallrole(Map map);

	List selectrole(Map map);

	void delrole(Map map);

	void updaterole(Map map);

}
