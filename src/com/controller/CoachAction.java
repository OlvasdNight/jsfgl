package com.controller;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Jilu;
import com.model.Coach;
import com.model.User;
import com.service.JiluService;
import com.service.CoachService;
import com.util.Config;
import com.util.PageBean;
@Controller
public class CoachAction{

	
	@Autowired
	private CoachService coachService;

	
	
	@RequestMapping(value="/coachList")
	public String coachList(HttpServletRequest req)throws Exception{
		
		int offset = 0;  //记录偏移量，hibernate数据分页用到
		int counts = 0;  //总记录数
		try {
			offset = Integer.parseInt(req.getParameter("pager.offset"));
		} catch (Exception e) {
		}
		
		PageBean page = new PageBean(offset);
		counts=coachService.getCount(null);
		List<Coach> coachList=coachService.queryCoachList(null, page);

		req.setAttribute("coachList", coachList);
		/** 分页代码   开始 **/
		req.setAttribute("itemSize",counts);
		int page_count = counts % PageBean.PAGE_IETM == 0 ? counts / PageBean.PAGE_IETM : counts / PageBean.PAGE_IETM + 1;
		req.setAttribute("pageItem",PageBean.PAGE_IETM);
		req.setAttribute("pageTotal",page_count);
		/** 分页代码   结束 **/
		return "/man/coach/coachList.jsp";
	}


	
	@RequestMapping(value="/coachReg")
	public String coachReg(Coach coach,HttpServletRequest request)throws Exception{
		Coach ser = new Coach();
		ser.setUname(coach.getUname());
		
		List<Coach> list = coachService.queryCoachList(ser, null);
		
		if(list!=null&&list.size()>0){
			request.setAttribute("message","用户名已存在");
			request.setAttribute("path","/web/regiset.jsp");
		}

		else {
			request.setAttribute("message","注册成功");
			request.setAttribute("path","/web/login.jsp");
			coachService.insertCoach(coach);
		}
		return "common/succeed.jsp";
		
	}
	
	
	@RequestMapping(value="/coachAdd")
	public String coachAdd(Coach coach,HttpServletRequest request)throws Exception{
		Coach ser = new Coach();
		ser.setUname(coach.getUname());
		
		List<Coach> list = coachService.queryCoachList(ser, null);
		
		if(list!=null&&list.size()>0){
			request.setAttribute("message","教练账号已存在");
			request.setAttribute("path","/man/coach/coachAdd.jsp");
		}else {
			coach.setUpwd(Config.DEFAULT_PWD);
			coachService.insertCoach(coach);
			request.setAttribute("message","添加成功");
			request.setAttribute("path","coachList.action");
			
		}
		return "common/succeed.jsp";
		
	}
	
	
	
	
	
	@RequestMapping(value="/coachDel")
	public String coachDel(HttpServletRequest request) throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		coachService.deleteCoach(id);
		
		request.setAttribute("message","操作成功");
		request.setAttribute("path","coachList.action");
		return "common/succeed.jsp";
	}
	
	@RequestMapping(value="/coachToAdd")
	public String coachToAdd(HttpServletRequest req) throws Exception {
		 

		return "/man/coach/coachAdd.jsp";
	}
	@RequestMapping(value="/tocoachEdit")
	public String tocoachEdit(HttpServletRequest request) throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		Coach coach = coachService.queryCoachById(id);
		request.setAttribute("coach", coach);
		
		return "/man/coach/coachEdit.jsp";
	}
	@RequestMapping(value="/tocoachView")
	public String tocoachView(HttpServletRequest request)throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		Coach coach = coachService.queryCoachById(id);
		request.setAttribute("coach", coach);
		
		return "/man/coach/coachView.jsp";
	}
	@RequestMapping(value="/coachEdit")
	public String coachEdit(Coach coach,HttpServletRequest request) throws Exception {
		coachService.updateCoach(coach);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","coachList.action");
		return "common/succeed.jsp";
	}
	
	@RequestMapping(value="/coachpwd")
	public String coachpwd(HttpServletRequest request) throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		Coach coach = coachService.queryCoachById(id);
		coach.setUpwd(Config.DEFAULT_PWD);
		coachService.updateCoach(coach);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","coachList.action");
		return "common/succeed.jsp";
	}
	
	
	
	@RequestMapping(value="/tocoachInfo")
	public String tocoachInfo(HttpServletRequest request)throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		Coach coach = coachService.queryCoachById(id);
		request.setAttribute("coach", coach);
		
		return "/man/coach/coachInfo.jsp";
	}
	
	
	
	@RequestMapping(value="/coachInfo")
	public String coachInfo(Coach coach,HttpServletRequest request) throws Exception {
		coachService.updateCoach(coach);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","tocoachInfo.action");
		request.setAttribute("id",coach.getId());
		return "common/succeed1.jsp";
	}
	
}
