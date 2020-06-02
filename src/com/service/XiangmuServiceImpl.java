package com.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.XiangmuMapper;
import com.model.Xiangmu;
import com.util.PageBean;
@Service
public class XiangmuServiceImpl implements XiangmuService{
        
    @Autowired
	private XiangmuMapper xiangmuMapper;


	public List<Xiangmu> queryXiangmuList(Xiangmu xiangmu,PageBean page) throws Exception {
		Map<String, Object> map =getQueryMap(xiangmu, page);
		
		List<Xiangmu> getXiangmu = xiangmuMapper.query(map);
		return getXiangmu;
	}
	
	@Override
	public int getCount(Xiangmu xiangmu) {
		Map<String, Object> map = getQueryMap(xiangmu, null);
		int count = xiangmuMapper.getCount(map);
		return count;
	}
	
	private Map<String, Object> getQueryMap(Xiangmu xiangmu,PageBean page){
		Map<String, Object> map = new HashMap<String, Object>();
		if(xiangmu!=null){
			map.put("id", xiangmu.getId());
			map.put("name", xiangmu.getName());
		}
		PageBean.setPageMap(map, page);
		return map;
	}
	
	

	public int insertXiangmu(Xiangmu xiangmu) throws Exception {
		return xiangmuMapper.insertXiangmu(xiangmu);
	}

	public int deleteXiangmu(int id) throws Exception {
		return xiangmuMapper.deleteXiangmu(id);
	}

	public int updateXiangmu(Xiangmu xiangmu) throws Exception {
		return xiangmuMapper.updateXiangmu(xiangmu);
	}
	
	public Xiangmu queryXiangmuById(int id) throws Exception {
		return xiangmuMapper.queryXiangmuById(id);
	}

 
}
