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
import com.st.service.VisitService;


@Controller
public class VisitAction {
	@Autowired
	VisitService visitS;
	@RequestMapping("/selectallvisit1")
	@ResponseBody
	public String selectallvisit(@RequestParam Map map) {
		List list = visitS.selectallvisit(map);
		LayJson layjson =new LayJson(list);
		layjson.setData(list);
		String strjson = JSONObject.toJSONString(layjson);
		return strjson;
		
	}

	@RequestMapping("/selectvisit1")
	@ResponseBody
	public String selectvisit(@RequestParam Map map) {
		List list = visitS.selectvisit(map);
		LayJson layjson =new LayJson(list);
		layjson.setData(list);
		String strjson =JSONObject.toJSONString(layjson);
		return strjson;
		


	}
	@RequestMapping("/delvisit1")
	@ResponseBody
	public void delvisit(@RequestParam Map map) {
		visitS.delvisit(map);
		
	}
	@RequestMapping("/addvisit1")
	@ResponseBody
	public void addvisit(@RequestParam Map map) {
		visitS.addvisit(map);
		
	}
	@RequestMapping("/updatevisit1")
	@ResponseBody
	public void updateadmin(@RequestParam Map map) {
		visitS.updatevisit(map);
	}
}
