package com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.GonggaoMapper;
import com.model.Gonggao;
import com.util.PageBean;
@Service
public class GonggaoServiceImpl implements GonggaoService
{
        
    @Autowired
	private GonggaoMapper gonggaoMapper;


	public List<Gonggao> queryGonggaoList(Gonggao gonggao,PageBean page) throws Exception {
		Map<String, Object> map = getQueryMap(gonggao, page);
		
		List<Gonggao> getGonggao = gonggaoMapper.query(map);
		return getGonggao;
	}
	
	@Override
	public int getCount(Gonggao gonggao) {
		Map<String, Object> map = getQueryMap(gonggao, null);
		int count = gonggaoMapper.getCount(map);
		return count;
	}
	
	private Map<String, Object> getQueryMap(Gonggao gonggao,PageBean page){
		Map<String, Object> map = new HashMap<String, Object>();
		if(gonggao!=null){
			map.put("id", gonggao.getId());
			map.put("uid", gonggao.getUid());
			map.put("usertype", gonggao.getUsertype());
			
		}
		PageBean.setPageMap(map, page);
		return map;
	}

	public int insertGonggao(Gonggao gonggao) throws Exception {
		
		return gonggaoMapper.insertGonggao(gonggao);
	}

	public int deleteGonggao(int id) throws Exception {
		return gonggaoMapper.deleteGonggao(id);
	}

	public int updateGonggao(Gonggao gonggao) throws Exception {
		return gonggaoMapper.updateGonggao(gonggao);
	}
	
	public Gonggao queryGonggaoById(int id) throws Exception {
		return gonggaoMapper.queryGonggaoById(id);
	}
	

	
	
	
	
 
}
