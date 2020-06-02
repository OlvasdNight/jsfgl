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
public class SHCourseAction{
	
	@Autowired
	private CourseService courseService;
	@Autowired
	private XiangmuService xiangmuService;
	@Autowired
	private CoachService coachService;
	
	
	
	@RequestMapping(value="/shcourseList")
	public String shcourseList(HttpServletRequest req)throws Exception{
		
		/** 分页代码   **/
		int offset = 0;  //记录偏移量，hibernate数据分页用到
		int counts = 0;  //总记录数
		try {
			offset = Integer.parseInt(req.getParameter("pager.offset"));
		} catch (Exception e) {
		}
		PageBean page = new PageBean(offset);
		Course ser = new Course();
		ser.setUsertype(1);
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
		return "/man/teacourse/shcourseList.jsp";
	}
	

	
	@RequestMapping(value="/courseSH")
	public String courseSH(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		int shState = Integer.parseInt(request.getParameter("shState"));
		Course course = courseService.queryCourseById(id);
		course.setState(shState);
		
		courseService.updateCourse(course);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","shcourseList.action");
		return "common/succeed.jsp";
	}
	
	

	
	
}
