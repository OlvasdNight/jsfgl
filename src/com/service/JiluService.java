package com.service;
import java.util.List;

import com.model.Jilu;
import com.util.PageBean;

public interface JiluService{
	
    public List<Jilu> queryJiluList(Jilu jilu,PageBean page) throws Exception;
 
	public int insertJilu(Jilu jilu) throws Exception ;
	
	public int deleteJilu(int id) throws Exception ;
	
	public int updateJilu(Jilu jilu) throws Exception ;
	
	public Jilu queryJiluById(int id) throws Exception ;
		
	int getCount(Jilu jilu);


}
