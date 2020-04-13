package com.st.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.st.dao.FollowDao;

@Service
public class FollowService {
	@Autowired
	FollowDao followD;

	public List selectallfollow(Map map) {
		return followD.selectallfollow(map);
	}

	public List selectfollow(Map map) {
		return followD.selectfollow(map);
	}

	public void delfollow(Map map) {
		followD.delfollow(map);
		
	}

	public void addfollow(Map map) {
		followD.addfollow(map);
		
	}

	public void updatefollow(Map map) {
		followD.updatefollow(map);
		
	}

}
