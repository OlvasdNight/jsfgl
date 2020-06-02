package com.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.QicaiMapper;
import com.model.Qicai;
import com.util.PageBean;
@Service
public class QicaiServiceImpl implements QicaiService{
        
    @Autowired
	private QicaiMapper qicaiMapper;


	public List<Qicai> queryQicaiList(Qicai qicai,PageBean page) throws Exception {
		Map<String, Object> map =getQueryMap(qicai, page);
		
		List<Qicai> getQicai = qicaiMapper.query(map);
		return getQicai;
	}
	
	@Override
	public int getCount(Qicai qicai) {
		Map<String, Object> map = getQueryMap(qicai, null);
		int count = qicaiMapper.getCount(map);
		return count;
	}
	
	private Map<String, Object> getQueryMap(Qicai qicai,PageBean page){
		Map<String, Object> map = new HashMap<String, Object>();
		if(qicai!=null){
			map.put("id", qicai.getId());
			map.put("name", qicai.getName());
		}
		PageBean.setPageMap(map, page);
		return map;
	}
	
	

	public int insertQicai(Qicai qicai) throws Exception {
		return qicaiMapper.insertQicai(qicai);
	}

	public int deleteQicai(int id) throws Exception {
		return qicaiMapper.deleteQicai(id);
	}

	public int updateQicai(Qicai qicai) throws Exception {
		return qicaiMapper.updateQicai(qicai);
	}
	
	public Qicai queryQicaiById(int id) throws Exception {
		return qicaiMapper.queryQicaiById(id);
	}

 
}
