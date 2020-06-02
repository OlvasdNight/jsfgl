package com.controller;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Jilu;
import com.model.User;
import com.service.JiluService;
import com.service.UserService;
import com.util.PageBean;
@Controller
public class JiluAction {
	
	@Autowired
	private JiluService jiluService;
	@Autowired
	private UserService userService;
	
	
	
	@RequestMapping(value="/jiluList")
	public String jiluList(HttpServletRequest req)  throws Exception{
		/** 分页代码  拷贝这一段  开始 **/
		int offset = 0;  //记录偏移量，hibernate数据分页用到
		int counts = 0;  //总记录数
		try {
			offset = Integer.parseInt(req.getParameter("pager.offset"));
		} catch (Exception e) {
		}
		PageBean page = new PageBean(offset);
		Jilu ser = new Jilu();
		counts= jiluService.getCount(ser);
		List<Jilu> jiluList=jiluService.queryJiluList(null,page);
		if(null!=jiluList&&jiluList.size()>0){
			for (Jilu jilu : jiluList) {
				User user = userService.queryUserById(jilu.getUid());
				jilu.setUname(user.getName());
			}
		}
		req.setAttribute("jiluList",jiluList);
		
		/** 分页代码  拷贝这一段  开始 **/
		req.setAttribute("itemSize",counts);
		int page_count = counts % PageBean.PAGE_IETM == 0 ? counts / PageBean.PAGE_IETM : counts / PageBean.PAGE_IETM + 1;
		req.setAttribute("pageItem",PageBean.PAGE_IETM);
		req.setAttribute("pageTotal",page_count);
		/** 分页代码  拷贝这一段  结束 **/
		return  "/man/jilu/jiluList.jsp";
	}
	
	@RequestMapping(value="/jiluToAdd")
	public String jiluToAdd(){
		
		return "/man/jilu/jiluAdd.jsp";
	}
	
	@RequestMapping(value="/jiluAdd")
	public String jiluAdd(Jilu jilu,HttpServletRequest request)  throws Exception{
		jilu.setCdate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		jiluService.insertJilu(jilu);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","lyList.action");
		
		return "common/succeed.jsp";
		
	}
	
	
	@RequestMapping(value="/jiluDel")
	public String jiluDel(HttpServletRequest request) throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		jiluService.deleteJilu(id);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","jiluList.action");
		return "common/succeed.jsp";
	}

	
	@RequestMapping(value="/tojiluEdit")
	public String tojiluEdit(HttpServletRequest request)throws Exception{
		
		int id = Integer.parseInt(request.getParameter("id"));
		Jilu jilu= jiluService.queryJiluById(id);
		
		request.setAttribute("jilu", jilu);
		return "/man/jilu/jiluEdit.jsp";
	}
	
	@RequestMapping(value="/jiluEdit")
	public String jiluEdit(Jilu jilu,HttpServletRequest request)throws Exception{
		jiluService.updateJilu(jilu);
		
		request.setAttribute("message","操作成功");
		request.setAttribute("path","jiluList.action");
		return "common/succeed.jsp";
	}
	@RequestMapping(value="/tojiluView")
	public String tojiluView(HttpServletRequest request)throws Exception{
		
		int id = Integer.parseInt(request.getParameter("id"));
		Jilu jilu= jiluService.queryJiluById(id);
		
		User user = userService.queryUserById(jilu.getUid());
		jilu.setUname(user.getName());
		
		request.setAttribute("jilu", jilu);
		return "/man/jilu/jiluView.jsp";
	}
	
	
	
	
	
}
