package com.service;
import java.util.List;

import com.model.Xiangmu;
import com.util.PageBean;

public interface XiangmuService{
	
    public List<Xiangmu> queryXiangmuList(Xiangmu xiangmu,PageBean page) throws Exception;
 
	public int insertXiangmu(Xiangmu xiangmu) throws Exception ;
	
	public int deleteXiangmu(int id) throws Exception ;
	
	public int updateXiangmu(Xiangmu xiangmu) throws Exception ;
	
	public Xiangmu queryXiangmuById(int id) throws Exception ;
		
	int getCount(Xiangmu xiangmu);


}
