package com.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Qicai;
import com.service.QicaiService;
import com.util.PageBean;
@Controller
public class QicaiAction{
	
	@Autowired
	private QicaiService qicaiService;
	
	@RequestMapping(value="/qicaiList")
	public String qicaiList(HttpServletRequest req)throws Exception{
		
		/** 分页代码   **/
		int offset = 0;  //记录偏移量，hibernate数据分页用到
		int counts = 0;  //总记录数
		try {
			offset = Integer.parseInt(req.getParameter("pager.offset"));
		} catch (Exception e) {
		}
		PageBean page = new PageBean(offset);
		Qicai ser = new Qicai();
		counts=qicaiService.getCount(ser);
		List<Qicai> qicaiList=qicaiService.queryQicaiList(ser, page);

		req.setAttribute("qicaiList", qicaiList);
		/** 分页代码  k开始**/
		req.setAttribute("itemSize",counts);
		int page_count = counts % PageBean.PAGE_IETM == 0 ? counts / PageBean.PAGE_IETM : counts / PageBean.PAGE_IETM + 1;
		req.setAttribute("pageItem",PageBean.PAGE_IETM);
		req.setAttribute("pageTotal",page_count);
		/** 分页代码  结束 **/
		return "/man/qicai/qicaiList.jsp";
	}
	@RequestMapping(value="/qicaiToAdd")
	public String qicaiToAdd(HttpServletRequest req){
		return "/man/qicai/qicaiAdd.jsp";
	}
	
	@RequestMapping(value="/qicaiAdd")
	public String qicaiAdd(Qicai qicai,HttpServletRequest request)throws Exception{
		qicaiService.insertQicai(qicai);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","qicaiList.action");
		return "common/succeed1.jsp";
	}
	
	@RequestMapping(value="/qicaiDel")
	public String qicaiDel(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		qicaiService.deleteQicai(id);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","qicaiList.action");
		return "common/succeed1.jsp";
	}
	
	
	@RequestMapping(value="/toqicaiEdit")
	public String toqicaiEdit(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Qicai qicai=qicaiService.queryQicaiById(id);
		request.setAttribute("qicai", qicai);
		return "/man/qicai/qicaiEdit.jsp";
	}
	
	@RequestMapping(value="/toqicaiView")
	public String toqicaiView(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Qicai qicai=qicaiService.queryQicaiById(id);
		request.setAttribute("qicai", qicai);
		return "/man/qicai/qicaiView.jsp";
	}
	
	@RequestMapping(value="/qicaiEdit")
	public String qicaiEdit(Qicai qicai,HttpServletRequest request)throws Exception{
		
		qicaiService.updateQicai(qicai);
		
		request.setAttribute("message","操作成功");
		request.setAttribute("path","qicaiList.action");
		return "common/succeed1.jsp";
	}
	

	
	
}
