package com.st.shiro;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.st.bean.User;
import com.st.service.imp.IUserService;
@Component
public class MyRealm extends AuthorizingRealm{
	@Autowired
	IUserService userS;

	/**
	 * 当使用权限管理时，shiro会自动调用该方法,该方法一定是登录成功之后运行，每当需要权限访问时都会执行此方法
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		String username = (String) SecurityUtils.getSubject().getPrincipal();
		
		return null;
	}
    /**
    * 登陆成功返回对象，登陆失败抛出异常
    */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		System.out.println(token.toString());
		//获得用户名和密码
		String username=token.getPrincipal().toString();
		String userpass=new String((char[])token.getCredentials());
		//去数据库验证是否正确
        User user =userS.getuser(username);
		return new SimpleAuthenticationInfo(username,userpass,getName());
	}

}
