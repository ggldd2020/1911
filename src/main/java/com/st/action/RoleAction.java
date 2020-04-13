package com.st.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.st.bean.LayJson;
import com.st.bean.Role;
import com.st.service.RoleService;

@Controller
public class RoleAction {
	@Autowired
	RoleService roleS;
	@RequestMapping("/addrole")
	@ResponseBody
	public void addadmin(Role role) {
		roleS.addrole(role);
	}
	@RequestMapping("/selectallrole")
	@ResponseBody
	public String selectalluser(@RequestParam Map map) {
		List list = roleS.selectallrole(map);
		System.out.println(list);
		LayJson layjson =new LayJson(list);
		layjson.setData(list);
		String strjson = JSONObject.toJSONString(layjson);
		System.out.println("strjson:"+strjson);
		return strjson;
		
	}

	@RequestMapping("/selectrole")
	@ResponseBody
	public String selectrole(@RequestParam Map map) {
		List list = roleS.selectrole(map);
		LayJson layjson =new LayJson(list);
		layjson.setData(list);
		String strjson =JSONObject.toJSONString(layjson);
		return strjson;
		


	}
	@RequestMapping("/delrole")
	@ResponseBody
	public void delrole(@RequestParam Map map) {
		roleS.delrole(map);
		
	}
	@RequestMapping("/updaterole")
	@ResponseBody
	public void updaterole(@RequestParam Map map) {
		roleS.updaterole(map);
	}
}
