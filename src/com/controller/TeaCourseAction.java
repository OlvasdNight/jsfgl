package com.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Coach;
import com.model.Course;
import com.model.Xiangmu;
import com.service.CoachService;
import com.service.CourseService;
import com.service.XiangmuService;
import com.util.PageBean;
@Controller
public class TeaCourseAction{
	
	@Autowired
	private CourseService courseService;
	@Autowired
	private XiangmuService xiangmuService;
	@Autowired
	private CoachService coachService;
	
	
	
	@RequestMapping(value="/teacourseList")
	public String teacourseList(HttpServletRequest req)throws Exception{
		
		/** 分页代码   **/
		int offset = 0;  //记录偏移量，hibernate数据分页用到
		int counts = 0;  //总记录数
		try {
			offset = Integer.parseInt(req.getParameter("pager.offset"));
		} catch (Exception e) {
		}
		Coach coach = (Coach) req.getSession().getAttribute("coach");
		
		
		PageBean page = new PageBean(offset);
		Course ser = new Course();
		ser.setCoachid(coach.getId());
		ser.setUsertype(1);
		counts=courseService.getCount(ser);
		List<Course> courseList=courseService.queryCourseList(ser, page);
		if(courseList!=null&&courseList.size()>0){
			for (Course course : courseList) {
				
				Xiangmu xm = xiangmuService.queryXiangmuById(course.getXmid());
				if(xm!=null){
					course.setXmname(xm.getName());
				}
			}
			
		}

		req.setAttribute("courseList", courseList);
		/** 分页代码  k开始**/
		req.setAttribute("itemSize",counts);
		int page_count = counts % PageBean.PAGE_IETM == 0 ? counts / PageBean.PAGE_IETM : counts / PageBean.PAGE_IETM + 1;
		req.setAttribute("pageItem",PageBean.PAGE_IETM);
		req.setAttribute("pageTotal",page_count);
		/** 分页代码  结束 **/
		return "/man/teacourse/courseList.jsp";
	}
	@RequestMapping(value="/teacourseToAdd")
	public String teacourseToAdd(HttpServletRequest req) throws Exception{
		
		List<Xiangmu> xiangmuList = xiangmuService.queryXiangmuList(null, null);
		List<Coach> coachList = coachService.queryCoachList(null, null);
		
		req.setAttribute("coachList", coachList);
		req.setAttribute("xiangmuList", xiangmuList);
		return "/man/teacourse/courseAdd.jsp";
	}
	
	@RequestMapping(value="/teacourseAdd")
	public String teacourseAdd(Course course,HttpServletRequest request)throws Exception{
		course.setState(0);
		course.setUsertype(1);
		Coach coach = (Coach) request.getSession().getAttribute("coach");
		course.setCoachid(coach.getId());
		courseService.insertCourse(course);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","teacourseList.action");
		return "common/succeed.jsp";
	}
	
	@RequestMapping(value="/teacourseDel")
	public String teacourseDel(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Course course=courseService.queryCourseById(id);
		courseService.deleteCourse(id);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","teacourseList.action");
		return "common/succeed1.jsp";
	}
	
	
	@RequestMapping(value="/toteacourseEdit")
	public String toteacourseEdit(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Course course=courseService.queryCourseById(id);
		request.setAttribute("course", course);
		List<Xiangmu> xiangmuList =  xiangmuService.queryXiangmuList(null, null);
		List<Coach> coachList = coachService.queryCoachList(null, null);
		
		request.setAttribute("coachList", coachList);
		request.setAttribute("xiangmuList", xiangmuList);
		return "/man/teacourse/courseEdit.jsp";
	}
	
	@RequestMapping(value="/toteacourseView")
	public String toteacourseView(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Course course=courseService.queryCourseById(id);
		request.setAttribute("course", course);
		return "/man/teacourse/courseView.jsp";
	}
	
	@RequestMapping(value="/teacourseEdit")
	public String teacourseEdit(Course course,HttpServletRequest request)throws Exception{
		
		courseService.updateCourse(course);
		
		request.setAttribute("message","操作成功");
		request.setAttribute("path","teacourseList.action");
		return "common/succeed1.jsp";
	}
	

	
	
}
