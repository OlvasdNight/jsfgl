package com.controller;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Coach;
import com.model.Gonggao;
import com.model.User;
import com.service.CoachService;
import com.service.GonggaoService;
import com.util.PageBean;
@Controller
public class GonggaoAction{
	
	@Autowired
	private GonggaoService gonggaoService;
	@Autowired
	private CoachService coachService;
	
	/**
	 * 全部公告
	 * @param req
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/gonggaoList")
	public String gonggaoList(HttpServletRequest req)throws Exception{
		
		/** 分页代码   **/
		int offset = 0;  //记录偏移量，hibernate数据分页用到
		int counts = 0;  //总记录数
		try {
			offset = Integer.parseInt(req.getParameter("pager.offset"));
		} catch (Exception e) {
		
		}
		//获取当前缓存登陆人员类型
		int userType = 0;
		if(req.getSession().getAttribute("userType")!=null){
			userType = Integer.parseInt(req.getSession().getAttribute("userType").toString());
		}
		PageBean page = new PageBean(offset);
		Gonggao ser = new Gonggao();
		ser.setUsertype(userType);
		counts=gonggaoService.getCount(ser);
		List<Gonggao> gonggaoList=gonggaoService.queryGonggaoList(ser, page);
		if(gonggaoList!=null&&gonggaoList.size()>0){
			for (Gonggao gonggao : gonggaoList) {
				if(gonggao.getUsertype()==1){
					Coach user = coachService.queryCoachById(gonggao.getUid());
					if(user!=null){
						gonggao.setUname(user.getName());
					}
				}else{
					gonggao.setUname("管理员");
				}
			}
		}
		

		req.setAttribute("gonggaoList", gonggaoList);
		/** 分页代码  k开始**/
		req.setAttribute("itemSize",counts);
		int page_count = counts % PageBean.PAGE_IETM == 0 ? counts / PageBean.PAGE_IETM : counts / PageBean.PAGE_IETM + 1;
		req.setAttribute("pageItem",PageBean.PAGE_IETM);
		req.setAttribute("pageTotal",page_count);
		/** 分页代码  结束 **/
		return "/man/gonggao/gonggaoList.jsp";
	}
	@RequestMapping(value="/gonggaoToAdd")
	public String gonggaoToAdd(HttpServletRequest req){
		return "/man/gonggao/gonggaoAdd.jsp";
	}
	
	@RequestMapping(value="/gonggaoAdd")
	public String gonggaoAdd(Gonggao gonggao,HttpServletRequest request)throws Exception{
		int usertype =  Integer.parseInt( (request.getSession().getAttribute("userType").toString()));
		if(usertype==1){//查询用户发布的公告
			Coach user = (Coach) request.getSession().getAttribute("coach");
			gonggao.setUid(user.getId());
		}
		gonggao.setCdate(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		gonggao.setUsertype(usertype);
		gonggaoService.insertGonggao(gonggao);
		request.setAttribute("message","操作成功");
		if(usertype==1){
			request.setAttribute("path","mygonggaoList.action");
		}else{
			request.setAttribute("path","gonggaoList.action");
		}
		
		return "common/succeed.jsp";
	}
	
	@RequestMapping(value="/gonggaoDel")
	public String gonggaoDel(HttpServletRequest request)throws Exception{
		int usertype =  Integer.parseInt( (request.getSession().getAttribute("userType").toString()));
		int id = Integer.parseInt(request.getParameter("id"));
		gonggaoService.deleteGonggao(id);
		request.setAttribute("message","操作成功");
		if(usertype==1){
			request.setAttribute("path","mygonggaoList.action");
		}else{
			request.setAttribute("path","gonggaoList.action");
		}
		return "common/succeed.jsp";
	}
	
	
	@RequestMapping(value="/togonggaoEdit")
	public String togonggaoEdit(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Gonggao gonggao=gonggaoService.queryGonggaoById(id);
		request.setAttribute("gonggao", gonggao);
		return "/man/gonggao/gonggaoEdit.jsp";
	}
	
	@RequestMapping(value="/togonggaoView")
	public String togonggaoView(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Gonggao gonggao=gonggaoService.queryGonggaoById(id);
		if(gonggao.getUsertype()==1){
			Coach user = coachService.queryCoachById(gonggao.getUid());
			if(user!=null){
				gonggao.setUname(user.getName());
			}
		}else{
			gonggao.setUname("管理员");
		}
		request.setAttribute("gonggao", gonggao);
		return "/web/gonggaoDetail.jsp";
	}
	
	@RequestMapping(value="/gonggaoEdit")
	public String gonggaoEdit(Gonggao gonggao,HttpServletRequest request)throws Exception{
		int usertype =  Integer.parseInt( (request.getSession().getAttribute("userType").toString()));
		gonggaoService.updateGonggao(gonggao);
		request.setAttribute("message","操作成功");
		if(usertype==1){
			request.setAttribute("path","mygonggaoList.action");
		}else{
			request.setAttribute("path","gonggaoList.action");
		}
		return "common/succeed.jsp";
	}
	/**
	 * 用户自己发布的公告
	 * @param req
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/mygonggaoList")
	public String mygonggaoList(HttpServletRequest req)throws Exception{
		
		/** 分页代码   **/
		int offset = 0;  //记录偏移量，hibernate数据分页用到
		int counts = 0;  //总记录数
		try {
			offset = Integer.parseInt(req.getParameter("pager.offset"));
		} catch (Exception e) {
		}
		PageBean page = new PageBean(offset);
		Gonggao ser = new Gonggao();
		int usertype =  Integer.parseInt( (req.getSession().getAttribute("userType").toString()));
		if(usertype==1){//查询用户发布的公告
			
			Coach coach = (Coach) req.getSession().getAttribute("coach");
			ser.setUid(coach.getId());
		}
		
		counts=gonggaoService.getCount(ser);
		List<Gonggao> gonggaoList=gonggaoService.queryGonggaoList(ser, page);

		req.setAttribute("gonggaoList", gonggaoList);
		/** 分页代码  k开始**/
		req.setAttribute("itemSize",counts);
		int page_count = counts % PageBean.PAGE_IETM == 0 ? counts / PageBean.PAGE_IETM : counts / PageBean.PAGE_IETM + 1;
		req.setAttribute("pageItem",PageBean.PAGE_IETM);
		req.setAttribute("pageTotal",page_count);
		/** 分页代码  结束 **/
		return "/man/gonggao/mygonggaoList.jsp";
	}
	
	
}
