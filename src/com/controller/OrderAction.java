package com.controller;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Coach;
import com.model.Course;
import com.model.Jilu;
import com.model.Order;
import com.model.User;
import com.service.CoachService;
import com.service.CourseService;
import com.service.JiluService;
import com.service.OrderService;
import com.service.UserService;
import com.util.PageBean;
@Controller
public class OrderAction{
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private UserService userService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private CoachService coachService;
	
	@Autowired
	private JiluService jiluService;
	
	@RequestMapping(value="/orderList")
	public String orderList(HttpServletRequest req)throws Exception{
		
		/** 分页代码   **/
		int offset = 0;  //记录偏移量，hibernate数据分页用到
		int counts = 0;  //总记录数
		try {
			offset = Integer.parseInt(req.getParameter("pager.offset"));
		} catch (Exception e) {
		}
		Order ser = new Order();
		if(null!=req.getSession().getAttribute("coach")){
			Coach coach = (Coach) req.getSession().getAttribute("coach");
			ser.setCoachid(coach.getId());
		}
		
		PageBean page = new PageBean(offset);
		counts=orderService.getCount(ser);
		List<Order> orderList=orderService.queryOrderList(ser, page);
		if(null!=orderList&&orderList.size()>0){
			for (Order order : orderList) {
				User user = userService.queryUserById(order.getUid());
				if(user!=null){
					order.setUname(user.getName());
				}
				Course course = courseService.queryCourseById(order.getCourseid());
				if(course!=null){
					order.setCoursename(course.getName());
				}
				Coach coach = coachService.queryCoachById(order.getCoachid());
				if(coach!=null){
					order.setCoachname(coach.getName());
				}
			}
		}

		req.setAttribute("orderList", orderList);
		/** 分页代码  k开始**/
		req.setAttribute("itemSize",counts);
		int page_count = counts % PageBean.PAGE_IETM == 0 ? counts / PageBean.PAGE_IETM : counts / PageBean.PAGE_IETM + 1;
		req.setAttribute("pageItem",PageBean.PAGE_IETM);
		req.setAttribute("pageTotal",page_count);
		/** 分页代码  结束 **/
		return "/man/order/orderList.jsp";
	}
	
	

	
	@RequestMapping(value="/orderDel")
	public String orderDel(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		orderService.deleteOrder(id);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","orderList.action");
		return "common/succeed.jsp";
	}
	
	
	@RequestMapping(value="/toorderEdit")
	public String toorderEdit(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Order order=orderService.queryOrderById(id);
		request.setAttribute("order", order);
		return "/man/order/orderEdit.jsp";
	}
	
	@RequestMapping(value="/toorderView")
	public String toorderView(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Order order=orderService.queryOrderById(id);
		User user = userService.queryUserById(order.getUid());
		if(user!=null){
			order.setUname(user.getName());
		}
		Course course = courseService.queryCourseById(order.getCourseid());
		if(course!=null){
			order.setCoursename(course.getName());
		}
		
		Coach coach = coachService.queryCoachById(order.getCoachid());
		if(coach!=null){
			order.setCoachname(coach.getName());
		}
		
		request.setAttribute("order", order);
		return "/man/order/orderView.jsp";
	}
	
	@RequestMapping(value="/orderEdit")
	public String orderEdit(int id,HttpServletRequest request)throws Exception{
		Order order=orderService.queryOrderById(id);
		order.setState("完成");
		orderService.updateOrder(order);
		Jilu jilu = new Jilu();
		jilu.setUid(order.getUid());
		jilu.setType(0);
		jilu.setQian(order.getFeiyong());
		jilu.setCdate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		jiluService.insertJilu(jilu);
		
		
		request.setAttribute("message","操作成功");
		request.setAttribute("path","orderList.action");
		return "common/succeed.jsp";
	}
	

	
	
}
