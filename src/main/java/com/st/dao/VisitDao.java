package com.st.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface VisitDao {

	List selectallvisit(Map map);

	List selectvisit(Map map);

	void delvisit(Map map);

	void addvisit(Map map);

	void updatevisit(Map map);


}