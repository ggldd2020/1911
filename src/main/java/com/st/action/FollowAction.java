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
import com.st.service.FollowService;

@Controller
public class FollowAction {
	@Autowired
	FollowService followS;
	@RequestMapping("/selectallfollow")
	@ResponseBody
	public String selectallfollow(@RequestParam Map map) {
		List list = followS.selectallfollow(map);
		LayJson layjson =new LayJson(list);
		layjson.setData(list);
		String strjson = JSONObject.toJSONString(layjson);
		return strjson;
		
	}

	@RequestMapping("/selectfollow")
	@ResponseBody
	public String selectfollow(@RequestParam Map map) {
		List list = followS.selectfollow(map);
		LayJson layjson =new LayJson(list);
		String strjson =JSONObject.toJSONString(layjson);
		return strjson;
		


	}
	@RequestMapping("/delfollow")
	@ResponseBody
	public void delfollow(@RequestParam Map map) {
		followS.delfollow(map);
		
	}
	@RequestMapping("/addfollow")
	@ResponseBody
	public void addfollow(@RequestParam Map map) {
		followS.addfollow(map);
		
	}
	@RequestMapping("/updatefollow")
	@ResponseBody
	public void updatefollow(@RequestParam Map map) {
		followS.updatefollow(map);
	}
}
