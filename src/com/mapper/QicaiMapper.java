package com.mapper;

import java.util.List;
import java.util.Map;

import com.model.Qicai;

public interface QicaiMapper {
	public List<Qicai> findQicaiList();
	
	public List<Qicai> query(Map<String,Object> inputParam);
	
	int getCount(Map<String,Object> inputParam);
	
	public int insertQicai(Qicai qicai);
	
	public int deleteQicai(int id);
	
	public int updateQicai(Qicai qicai);
	
	public Qicai queryQicaiById(int id);
	
}
