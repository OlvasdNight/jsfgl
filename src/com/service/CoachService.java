package com.service;
import java.util.List;

import com.model.Coach;
import com.util.PageBean;

public interface CoachService
{
    public List<Coach> queryCoachList(Coach coach,PageBean page) throws Exception;
 
	public int insertCoach(Coach coach) throws Exception ;
	
	public int deleteCoach(int id) throws Exception ;
	
	public int updateCoach(Coach coach) throws Exception ;
	
	public Coach queryCoachById(int id) throws Exception ;
	
	int getCount(Coach coach);
	

}
