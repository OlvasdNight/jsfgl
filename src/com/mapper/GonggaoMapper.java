package com.mapper;

import java.util.List;
import java.util.Map;

import com.model.Gonggao;

public interface GonggaoMapper {
	public List<Gonggao> findGonggaoList();
	
	public List<Gonggao> query(Map<String,Object> inputParam);
	
	int getCount(Map<String,Object> inputParam);
	
	public int insertGonggao(Gonggao gonggao);
	
	public int deleteGonggao(int id);
	
	public int updateGonggao(Gonggao gonggao);
	
	public Gonggao queryGonggaoById(int id);
	
 
	
	
}
