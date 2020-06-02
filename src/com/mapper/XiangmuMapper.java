package com.mapper;

import java.util.List;
import java.util.Map;

import com.model.Xiangmu;

public interface XiangmuMapper {
	public List<Xiangmu> findXiangmuList();
	
	public List<Xiangmu> query(Map<String,Object> inputParam);
	
	int getCount(Map<String,Object> inputParam);
	
	public int insertXiangmu(Xiangmu hangban);
	
	public int deleteXiangmu(int id);
	
	public int updateXiangmu(Xiangmu hangban);
	
	public Xiangmu queryXiangmuById(int id);
	
}
