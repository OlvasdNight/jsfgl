package com.mapper;

import java.util.List;
import java.util.Map;

import com.model.Coach;

public interface CoachMapper {
	public List<Coach> findCoachList();
	
	public List<Coach> query(Map<String,Object> inputParam);
	
	int getCount(Map<String,Object> inputParam);
	
	public int insertCoach(Coach coach);
	
	public int deleteCoach(int id);
	
	public int updateCoach(Coach coach);
	
	public Coach queryCoachById(int id);
	
 
	
	
}
