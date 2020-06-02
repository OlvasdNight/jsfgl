package com.mapper;

import java.util.List;
import java.util.Map;

import com.model.Chart;
import com.model.Order;

public interface OrderMapper {
	public List<Order> findOrderList();
	
	public List<Order> query(Map<String,Object> inputParam);
	
	int getCount(Map<String,Object> inputParam);
	
	public int insertOrder(Order order);
	
	public int deleteOrder(int id);
	
	public int updateOrder(Order order);
	
	public Order queryOrderById(int id);
	
	public List<Chart> tjByAge();
	
	public List<Chart> tjBySex();
	
 
	
	
}
