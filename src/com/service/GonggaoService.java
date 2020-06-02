package com.service;

import java.util.List;

import com.model.Gonggao;
import com.util.PageBean;

public interface GonggaoService
{
    public List<Gonggao> queryGonggaoList(Gonggao gonggao,PageBean page) throws Exception;
 
	public int insertGonggao(Gonggao gonggao) throws Exception ;
	
	public int deleteGonggao(int id) throws Exception ;
	
	public int updateGonggao(Gonggao gonggao) throws Exception ;
	
	public Gonggao queryGonggaoById(int id) throws Exception ;
	
	int getCount(Gonggao gonggao);
	

}
