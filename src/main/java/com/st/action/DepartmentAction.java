package com.st.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.st.bean.Department;
import com.st.bean.LayJson;
import com.st.service.DepartmentService;

@Controller
public class DepartmentAction {

	@Autowired
	DepartmentService departmentS;
	
	@RequestMapping("/adddepartment")
	@ResponseBody
	public void adddepartment(Department department) {
		departmentS.adddepartment(department);
	}
	@RequestMapping("/selectalldepartment")
	@ResponseBody
	public String selectalldepartment(@RequestParam Map map) {
		List list = departmentS.selectalldepartment(map);
		System.out.println(list);
		LayJson layjson =new LayJson(list);
		layjson.setData(list);
		String strjson = JSONObject.toJSONString(layjson);
		return strjson;
		
	}

	@RequestMapping("/selectdepartment")
	@ResponseBody
	public String selectdepartment(@RequestParam Map map) {
		List list = departmentS.selectdepartment(map);
		LayJson layjson =new LayJson(list);
		layjson.setData(list);
		String strjson =JSONObject.toJSONString(layjson);
		return strjson;
		


	}
	@RequestMapping("/deldepartment")
	@ResponseBody
	public void deldepartment(@RequestParam Map map) {
		departmentS.deldepartment(map);
		
	}
	@RequestMapping("/updatedepartment")
	@ResponseBody
	public void updatedepartment(@RequestParam Map map) {
		departmentS.updatedepartment(map);
	}
}
