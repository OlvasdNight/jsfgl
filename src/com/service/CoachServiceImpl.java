package com.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.CoachMapper;
import com.model.Coach;
import com.util.PageBean;
@Service
public class CoachServiceImpl implements CoachService
{
        
    @Autowired
	private CoachMapper coachMapper;


	public List<Coach> queryCoachList(Coach coach,PageBean page) throws Exception {
		Map<String, Object> map = getQueryMap(coach, page);
		
		List<Coach> getCoach = coachMapper.query(map);
		return getCoach;
	}
	
	@Override
	public int getCount(Coach coach) {
		Map<String, Object> map = getQueryMap(coach, null);
		int count = coachMapper.getCount(map);
		return count;
	}
	
	private Map<String, Object> getQueryMap(Coach coach,PageBean page){
		Map<String, Object> map = new HashMap<String, Object>();
		if(coach!=null){
			map.put("id", coach.getId());
			
			map.put("uname", coach.getUname());
			map.put("upwd", coach.getUpwd());
			
			map.put("state", coach.getState());
		}
		PageBean.setPageMap(map, page);
		return map;
	}

	public int insertCoach(Coach coach) throws Exception {
		
		return coachMapper.insertCoach(coach);
	}

	public int deleteCoach(int id) throws Exception {
		return coachMapper.deleteCoach(id);
	}

	public int updateCoach(Coach coach) throws Exception {
		return coachMapper.updateCoach(coach);
	}
	
	public Coach queryCoachById(int id) throws Exception {
		return coachMapper.queryCoachById(id);
	}
	

	
	
	
	
 
}
