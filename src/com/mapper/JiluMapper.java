package com.mapper;

import java.util.List;
import java.util.Map;

import com.model.Jilu;
import com.model.Xiangmu;

public interface JiluMapper {
public List<Jilu> findJiluList();
	
	public List<Jilu> query(Map<String,Object> inputParam);
	
	int getCount(Map<String,Object> inputParam);
	
	public int insertJilu(Jilu hangban);
	
	public int deleteJilu(int id);
	
	public int updateJilu(Jilu hangban);
	
	public Jilu queryJiluById(int id);
	
 
	
}
