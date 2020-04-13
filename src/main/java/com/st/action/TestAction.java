package com.st.action;

import java.util.List;
import java.util.Map;

import org.apache.catalina.security.SecurityUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.st.bean.LayJson;
import com.st.bean.User;
import com.st.service.TestService;

@Controller
public class TestAction {
	@Autowired
	TestService testS;
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	@RequestMapping("/Tree")
	public String tree() {
		return "Tree";
	}
    @RequestMapping("/adduser")
    @ResponseBody
    public void adduser(User user) {
    	testS.adduser(user);
    }
	@RequestMapping("/selectalluser")
	@ResponseBody
	public String selectalluser(@RequestParam Map map){
		List list=testS.selectalluser(map);
		LayJson layjson =new LayJson(list);
		String strjson = JSONObject.toJSONString(layjson);
		//System.out.println("testaction:"+strjson.toString());
		return strjson;
	}
	@RequestMapping("/selectuser")
	@ResponseBody
	public String selectuser(@RequestParam Map map) {
		List list = testS.selectuser(map);
		LayJson layjson =new LayJson(list);
		String strjson =JSONObject.toJSONString(layjson);
		return strjson;
		
	}
	@RequestMapping("/deluser")
	@ResponseBody
	public void deluser(@RequestParam Map map) {
		testS.deluser(map);
		System.out.println(map);
		
	}
	@RequestMapping("/updateuser")
	@ResponseBody
	public void updateuser(@RequestParam Map map) {
		testS.updateuser(map);
	}
	@RequestMapping("/treeJson")
	@ResponseBody
	public List treeJson() {
		List list=testS.treeJson();
		return list;
	}
	@RequestMapping("/userlist")
	public String userlist() {
		return "userlist";
	}
	@RequestMapping("/adminlist")
	public String adminlist() {
		return "adminlist";
	}
	@RequestMapping("/usercontrol")
	public String usercontrol() {
		return "usercontrol";
	}
	@RequestMapping("/admincontrol")
	public String admincontrol() {
		return "admincontrol";
	}
	@RequestMapping("/department")
	public String department() {
		return "department";
	}
	@RequestMapping("/customerlist")
	public String customerlist() {
		return "customerlist";
	}
	@RequestMapping("/role")
	public String role() {
		return "role";
	}
	@RequestMapping("/visit")
	public String visit() {
		return "visit";
	}
	/**
	 * 登录跳转页面
	 * @return
	 */
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	/**
	 * 登录验证方法
	 * @param username
	 * @param userpass
	 * @return
	 */
	@RequestMapping("/login_system")
	public String login_system(@RequestParam String username,@RequestParam String userpass) {
		System.out.println("username:"+username);
		System.out.println("userpass:"+userpass);
		//生成安全令牌
		UsernamePasswordToken token=new UsernamePasswordToken(username,userpass);//使用用户名和密码生成安全令牌
		Subject sub=SecurityUtils.getSubject();//获取当前访问用户的对象
		sub.login(token);//开始登陆，执行realm
		return "index";
	}

}
