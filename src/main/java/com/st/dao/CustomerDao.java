package com.st.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
@Repository
public interface CustomerDao {

	List selectallcustomer(Map map);

	List selectcustomer(Map map);

	void delcustomer(Map map);

	void updatecustomer(Map map);

	void addcustomer(Map map);

}
