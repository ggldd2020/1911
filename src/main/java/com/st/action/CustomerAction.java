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
import com.st.service.CustomerService;

@Controller
public class CustomerAction {
	@Autowired
	CustomerService customerS;
	@RequestMapping("/selectallcustomer")
	@ResponseBody
	public String selectallcustomer(@RequestParam Map map) {
		List list = customerS.selectallcustomer(map);
		LayJson layjson =new LayJson(list);
		layjson.setData(list);
		String strjson = JSONObject.toJSONString(layjson);
		return strjson;
		
	}

	@RequestMapping("/selectcustomer")
	@ResponseBody
	public String selectcustomer(@RequestParam Map map) {
		List list = customerS.selectcustomer(map);
		LayJson layjson =new LayJson(list);
		layjson.setData(list);
		String strjson =JSONObject.toJSONString(layjson);
		return strjson;
		


	}
	@RequestMapping("/delcustomer")
	@ResponseBody
	public void delcustomer(@RequestParam Map map) {
		customerS.delcustomer(map);
		
	}
	@RequestMapping("/addcustomer")
	@ResponseBody
	public void addcustomer(@RequestParam Map map) {
		customerS.addcustomer(map);
		
	}
	@RequestMapping("/updatecustomer")
	@ResponseBody
	public void updatecustomer(@RequestParam Map map) {
		customerS.updatecustomer(map);
		System.out.println(map+"updateaction");
	}
}
