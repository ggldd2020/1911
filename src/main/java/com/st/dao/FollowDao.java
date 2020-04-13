package com.st.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("FollowD")
public interface FollowDao {
	List selectallfollow(Map map);
	List selectfollow(Map map);
	void delfollow(Map map);
	void addfollow(Map map);
	void updatefollow(Map map);

}
