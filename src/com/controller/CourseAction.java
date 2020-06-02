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
public class CourseAction{
	
	@Autowired
	private CourseService courseService;
	@Autowired
	private XiangmuService xiangmuService;
	@Autowired
	private CoachService coachService;
	
	
	
	@RequestMapping(value="/courseList")
	public String courseList(HttpServletRequest req)throws Exception{
		
		/** 分页代码   **/
		int offset = 0;  //记录偏移量，hibernate数据分页用到
		int counts = 0;  //总记录数
		try {
			offset = Integer.parseInt(req.getParameter("pager.offset"));
		} catch (Exception e) {
		}
		PageBean page = new PageBean(offset);
		Course ser = new Course();
		ser.setState(1);
		counts=courseService.getCount(ser);
		List<Course> courseList=courseService.queryCourseList(ser, page);
		if(courseList!=null&&courseList.size()>0){
			for (Course course : courseList) {
				Coach coach = coachService.queryCoachById(course.getCoachid());
				if(coach!=null){
					course.setCoachname(coach.getName());
				}
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
		return "/man/course/courseList.jsp";
	}
	@RequestMapping(value="/courseToAdd")
	public String courseToAdd(HttpServletRequest req) throws Exception{
		
		List<Xiangmu> xiangmuList = xiangmuService.queryXiangmuList(null, null);
		List<Coach> coachList = coachService.queryCoachList(null, null);
		
		req.setAttribute("coachList", coachList);
		req.setAttribute("xiangmuList", xiangmuList);
		return "/man/course/courseAdd.jsp";
	}
	
	@RequestMapping(value="/courseAdd")
	public String courseAdd(Course course,HttpServletRequest request)throws Exception{
		course.setState(1);
		int userType = 0;
		if(request.getSession().getAttribute("userType")!=null){
			userType = Integer.parseInt(request.getSession().getAttribute("userType").toString());
		}
		course.setUsertype(userType);
		courseService.insertCourse(course);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","courseList.action");
		return "common/succeed.jsp";
	}
	
	@RequestMapping(value="/courseDel")
	public String courseDel(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Course course=courseService.queryCourseById(id);
		courseService.deleteCourse(id);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","courseList.action");
		return "common/succeed.jsp";
	}
	
	
	@RequestMapping(value="/tocourseEdit")
	public String tocourseEdit(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Course course=courseService.queryCourseById(id);
		request.setAttribute("course", course);
		List<Xiangmu> xiangmuList =  xiangmuService.queryXiangmuList(null, null);
		List<Coach> coachList = coachService.queryCoachList(null, null);
		
		request.setAttribute("coachList", coachList);
		request.setAttribute("xiangmuList", xiangmuList);
		return "/man/course/courseEdit.jsp";
	}
	
	@RequestMapping(value="/tocourseView")
	public String tocourseView(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Course course=courseService.queryCourseById(id);
		
		Coach coach = coachService.queryCoachById(course.getCoachid());
		course.setCoachname(coach.getName());
		
		request.setAttribute("course", course);
		return "/web/xmDetail.jsp";
	}
	
	@RequestMapping(value="/courseEdit")
	public String courseEdit(Course course,HttpServletRequest request)throws Exception{
		
		courseService.updateCourse(course);
		
		request.setAttribute("message","操作成功");
		request.setAttribute("path","courseList.action");
		return "common/succeed1.jsp";
	}
	

	
	
}
