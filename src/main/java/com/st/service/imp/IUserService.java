package com.st.service.imp;

import java.util.List;
import java.util.Map;

import com.st.bean.User;

public interface IUserService {
	List selectalluser(Map map);
	void adduser(User user);
	List selectuser(Map map);
	void deluser(Map map);
	User getuser(String username);

}
