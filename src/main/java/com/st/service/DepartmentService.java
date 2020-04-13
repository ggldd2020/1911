package com.st.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.st.bean.Department;
import com.st.dao.DepartmentDao;
@Service("DepartmentS")
public class DepartmentService {
	@Autowired
	DepartmentDao departmentD;

	public void adddepartment(Department department) {
		departmentD.adddepartment(department);
		
	}

	public List selectalldepartment(Map map) {
		return departmentD.selectalldepartment(map);
	}

	public List selectdepartment(Map map) {
		return departmentD.selectdepartment(map);
	}

	public void deldepartment(Map map) {
		departmentD.deldepartment(map);
		
	}

	public void updatedepartment(Map map) {
		departmentD.updatedepartment(map);
		
	}

}
