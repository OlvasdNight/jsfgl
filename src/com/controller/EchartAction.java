package com.controller;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Chart;
import com.service.OrderService;
@Controller
public class EchartAction{

	
	@Autowired
	private OrderService orderService;

	
	
	@RequestMapping(value="/barChart")
	public String barChart(HttpServletRequest req)throws Exception{

		String values ="";
		String datas = "";
		
		List<Chart> list0 = orderService.tjByAge();
		Map<Integer,Chart> map = new HashMap<Integer, Chart>();
		if(list0!=null&&list0.size()>0){
			for (Chart chart : list0) {
				map.put(chart.getRatio(), chart);
			}
		}
		
		List<Chart> list = new ArrayList<Chart>();
		for (int i=0;i<6;i++) {
			Chart chart = map.get(i);
			if(chart==null){
				chart = new Chart();
				chart.setRatio(i);
				chart.setNum(0);
			}
			list.add(chart);
		}
		
		if(list!=null&&list.size()>0){
			for (int i=0;i<list.size();i++) {
				if(list.size()-1!=i){
					datas = datas+list.get(i).getNum()+",";
				}else{
					datas = datas+list.get(i).getNum();
				}
			}
		}
		req.setAttribute("values", values);
		req.setAttribute("datas", datas);
		return "/man/echart/chart1.jsp";
	}


	
	@RequestMapping(value="/pieChart")
	public String pieChart(HttpServletRequest req)throws Exception{
		String values ="";
		String datas = "";
		List<Chart> list0 = orderService.tjBySex();
		Map<String,Chart> map = new HashMap<String, Chart>();
		if(list0!=null&&list0.size()>0){
			for (Chart chart : list0) {
				map.put(chart.getSex(), chart);
			}
		}
		String[] strs ={"男","女"};
		List<Chart> list = new ArrayList<Chart>();
		for (int i=0;i<strs.length;i++) {
			Chart chart = map.get(strs[i]);
			if(chart==null){
				chart = new Chart();
				chart.setSex(strs[i]);
				chart.setNum(0);
			}
			list.add(chart);
		}
		
		if(list!=null&&list.size()>0){
			for (int i=0;i<list.size();i++) {
				if(list.size()-1!=i){
					values = values+"'"+list.get(i).getSex()+"',";
					datas = datas+ "{value:"+list.get(i).getNum()+", name:'"+list.get(i).getSex()+"'},";
				}else{
					values= values+"'"+list.get(i).getSex()+"'";
					datas = datas+ "{value:"+list.get(i).getNum()+", name:'"+list.get(i).getSex()+"'}";
				}
			}
		}
		req.setAttribute("values", values);
		req.setAttribute("datas", datas);
		return "/man/echart/chart2.jsp";
	}
	
}
