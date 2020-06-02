package com.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.JiluMapper;
import com.model.Jilu;
import com.util.PageBean;
@Service
public class JiluServiceImpl implements JiluService{
        
    @Autowired
	private JiluMapper jiluMapper;


	public List<Jilu> queryJiluList(Jilu jilu,PageBean page) throws Exception {
		Map<String, Object> map =getQueryMap(jilu, page);
		
		List<Jilu> getJilu = jiluMapper.query(map);
		return getJilu;
	}
	
	@Override
	public int getCount(Jilu jilu) {
		Map<String, Object> map = getQueryMap(jilu, null);
		int count = jiluMapper.getCount(map);
		return count;
	}
	
	private Map<String, Object> getQueryMap(Jilu jilu,PageBean page){
		Map<String, Object> map = new HashMap<String, Object>();
		if(jilu!=null){
			map.put("id", jilu.getId());
			map.put("uid", jilu.getUid());
		}
		PageBean.setPageMap(map, page);
		return map;
	}
	
	

	public int insertJilu(Jilu jilu) throws Exception {
		return jiluMapper.insertJilu(jilu);
	}

	public int deleteJilu(int id) throws Exception {
		return jiluMapper.deleteJilu(id);
	}

	public int updateJilu(Jilu jilu) throws Exception {
		return jiluMapper.updateJilu(jilu);
	}
	
	public Jilu queryJiluById(int id) throws Exception {
		return jiluMapper.queryJiluById(id);
	}

 
}
