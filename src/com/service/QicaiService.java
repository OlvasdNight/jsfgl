package com.service;
import java.util.List;

import com.model.Qicai;
import com.util.PageBean;

public interface QicaiService{
	
    public List<Qicai> queryQicaiList(Qicai qicai,PageBean page) throws Exception;
 
	public int insertQicai(Qicai qicai) throws Exception ;
	
	public int deleteQicai(int id) throws Exception ;
	
	public int updateQicai(Qicai qicai) throws Exception ;
	
	public Qicai queryQicaiById(int id) throws Exception ;
		
	int getCount(Qicai qicai);


}
