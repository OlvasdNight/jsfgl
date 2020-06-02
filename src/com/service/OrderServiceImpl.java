package com.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.OrderMapper;
import com.model.Chart;
import com.model.Order;
import com.util.PageBean;
@Service
public class OrderServiceImpl implements OrderService
{
        
    @Autowired
	private OrderMapper orderMapper;


	public List<Order> queryOrderList(Order order,PageBean page) throws Exception {
		Map<String, Object> map =getQueryMap(order, page);
		
		List<Order> getOrder = orderMapper.query(map);
		return getOrder;
	}
	
	@Override
	public int getCount(Order order) {
		Map<String, Object> map = getQueryMap(order, null);
		int count = orderMapper.getCount(map);
		return count;
	}
	
	private Map<String, Object> getQueryMap(Order order,PageBean page){
		Map<String, Object> map = new HashMap<String, Object>();
		if(order!=null){
			map.put("id", order.getId());
			map.put("uid", order.getUid());
			map.put("courseid", order.getCourseid());
			map.put("coachid", order.getCoachid());
		}
		PageBean.setPageMap(map, page);
		return map;
	}
	
	@Override
	public List<Order> report(Order order) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public int insertOrder(Order order) throws Exception {
		
		return orderMapper.insertOrder(order);
	}

	public int deleteOrder(int id) throws Exception {
		return orderMapper.deleteOrder(id);
	}

	public int updateOrder(Order order) throws Exception {
		return orderMapper.updateOrder(order);
	}
	
	public Order queryOrderById(int id) throws Exception {
		return orderMapper.queryOrderById(id);
	}

	@Override
	public List<Chart> tjByAge() {
		return orderMapper.tjByAge();
	}

	@Override
	public List<Chart> tjBySex() {
		return orderMapper.tjBySex();
	}

	
 
}
