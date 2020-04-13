package com.st.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.st.dao.VisitDao;

@Service
public class VisitService {
	@Autowired
	VisitDao visitD;

	public List selectallvisit(Map map) {
		return visitD.selectallvisit(map);
	}

	public List selectvisit(Map map) {
		return visitD.selectvisit(map);
	}

	public void delvisit(Map map) {
		visitD.delvisit(map);
		
	}

	public void addvisit(Map map) {
		visitD.addvisit(map);
		
	}

	public void updatevisit(Map map) {
		visitD.updatevisit(map);
		
	}
	

}
