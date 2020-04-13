package com.st.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.st.bean.Department;
@Repository("DepartmentD")
public interface DepartmentDao {

	List selectdepartment(Map map);

	void adddepartment(Department department);

	List selectalldepartment(Map map);

	void deldepartment(Map map);

	void updatedepartment(Map map);

}
