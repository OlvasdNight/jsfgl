package com.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Xiangmu;
import com.service.XiangmuService;
import com.util.PageBean;
@Controller
public class XiangmuAction{
	
	@Autowired
	private XiangmuService xiangmuService;
	
	@RequestMapping(value="/xiangmuList")
	public String xiangmuList(HttpServletRequest req)throws Exception{
		
		/** 分页代码   **/
		int offset = 0;  //记录偏移量，hibernate数据分页用到
		int counts = 0;  //总记录数
		try {
			offset = Integer.parseInt(req.getParameter("pager.offset"));
		} catch (Exception e) {
		}
		PageBean page = new PageBean(offset);
		Xiangmu ser = new Xiangmu();
		counts=xiangmuService.getCount(ser);
		List<Xiangmu> xiangmuList=xiangmuService.queryXiangmuList(ser, page);

		req.setAttribute("xiangmuList", xiangmuList);
		/** 分页代码  k开始**/
		req.setAttribute("itemSize",counts);
		int page_count = counts % PageBean.PAGE_IETM == 0 ? counts / PageBean.PAGE_IETM : counts / PageBean.PAGE_IETM + 1;
		req.setAttribute("pageItem",PageBean.PAGE_IETM);
		req.setAttribute("pageTotal",page_count);
		/** 分页代码  结束 **/
		return "/man/xiangmu/xiangmuList.jsp";
	}
	@RequestMapping(value="/xiangmuToAdd")
	public String xiangmuToAdd(HttpServletRequest req){
		return "/man/xiangmu/xiangmuAdd.jsp";
	}
	
	@RequestMapping(value="/xiangmuAdd")
	public String xiangmuAdd(Xiangmu xiangmu,HttpServletRequest request)throws Exception{
		xiangmuService.insertXiangmu(xiangmu);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","xiangmuList.action");
		return "common/succeed.jsp";
	}
	
	@RequestMapping(value="/xiangmuDel")
	public String xiangmuDel(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		xiangmuService.deleteXiangmu(id);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","xiangmuList.action");
		return "common/succeed.jsp";
	}
	
	
	@RequestMapping(value="/toxiangmuEdit")
	public String toxiangmuEdit(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Xiangmu xiangmu=xiangmuService.queryXiangmuById(id);
		request.setAttribute("xiangmu", xiangmu);
		return "/man/xiangmu/xiangmuEdit.jsp";
	}
	
	@RequestMapping(value="/toxiangmuView")
	public String toxiangmuView(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Xiangmu xiangmu=xiangmuService.queryXiangmuById(id);
		request.setAttribute("xiangmu", xiangmu);
		return "/man/xiangmu/xiangmuView.jsp";
	}
	
	@RequestMapping(value="/xiangmuEdit")
	public String xiangmuEdit(Xiangmu xiangmu,HttpServletRequest request)throws Exception{
		
		xiangmuService.updateXiangmu(xiangmu);
		
		request.setAttribute("message","操作成功");
		request.setAttribute("path","xiangmuList.action");
		return "common/succeed.jsp";
	}
	

	
	
}
