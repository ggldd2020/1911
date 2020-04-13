package com.st.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.st.bean.Admin;
import com.st.bean.LayJson;
import com.st.service.AdminService;

@Controller
public class AdminAction {
@Autowired
AdminService adminS;
@RequestMapping("/addadmin")
@ResponseBody
public void addadmin(Admin admin) {
	adminS.addadmin(admin);
}
@RequestMapping("/selectalladmin")
@ResponseBody
public String selectalluser(@RequestParam Map map) {
	List list = adminS.selectalladmin(map);
	LayJson layjson =new LayJson(list);
	layjson.setData(list);
	String strjson = JSONObject.toJSONString(layjson);
	return strjson;
	
}

@RequestMapping("/selectadmin")
@ResponseBody
public String selectadmin(@RequestParam Map map) {
	List list = adminS.selectadmin(map);
	LayJson layjson =new LayJson(list);
	layjson.setData(list);
	String strjson =JSONObject.toJSONString(layjson);
	return strjson;
	


}
@RequestMapping("/deladmin")
@ResponseBody
public void deladmin(@RequestParam Map map) {
	adminS.deladmin(map);
	
}
@RequestMapping("/updateadmin")
@ResponseBody
public void updateadmin(@RequestParam Map map) {
	adminS.updateadmin(map);
}
}
