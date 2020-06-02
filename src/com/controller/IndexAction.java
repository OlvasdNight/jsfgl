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
import com.model.Gonggao;
import com.model.Jilu;
import com.model.Order;
import com.model.User;
import com.service.CoachService;
import com.service.CourseService;
import com.service.GonggaoService;
import com.service.JiluService;
import com.service.OrderService;
import com.service.UserService;
import com.util.PageBean;

@Controller
public class IndexAction {

	@Autowired
	private OrderService   orderService ;
	@Autowired
	private CourseService   courseService ;
	@Autowired
	private UserService   userService ;
	@Autowired
	private CoachService  coachService ;
	@Autowired
	private GonggaoService  gonggaoService ;
	
	@Autowired
	private JiluService jiluService;
	
	//列表分页
	private static int PAGESIZE=4;
	
	
	@RequestMapping(value="/userReg")
	public String userReg(User user,HttpServletRequest request)throws Exception{
		User ser = new User();
		ser.setUname(user.getUname());
		
		List<User> list = userService.queryUserList(ser, null);
		
		if(list!=null&&list.size()>0){
			request.setAttribute("message","用户名已存在");
			request.setAttribute("path","/web/regiset.jsp");
		}

		else {
			user.setJifen(0);
			request.setAttribute("message","注册成功");
			request.setAttribute("path","/web/login.jsp");
			userService.insertUser(user);
		}
		return "common/succeed.jsp";
		
	}

	@RequestMapping(value="/index")
	public String index(HttpServletRequest request) throws Exception {
		//查询健身教练图片
		List<Coach> coachList = coachService.queryCoachList(null, new PageBean(0, 5));
		request.setAttribute("coachList", coachList);
		//首页公告列表
		List<Gonggao> gonggaoList = gonggaoService.queryGonggaoList(null, new PageBean(0, 10));
		request.setAttribute("gonggaoList", gonggaoList);

		
		//查询私教课程
		List<Course> courseList=courseService.queryCourseList(new Course(0), new PageBean(0, 2));
		request.setAttribute("courseList", courseList);
		

		
		return "/web/index.jsp";
	}
	
	/**
	 * 全部公告
	 * @param req
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/webgonggaoList")
	public String webgonggaoList(HttpServletRequest req)throws Exception{
		List<Gonggao> gonggaoList=gonggaoService.queryGonggaoList(null, null);
		req.setAttribute("gonggaoList", gonggaoList);
		/** 分页代码  结束 **/
		return "/web/gonggaoList.jsp";
	}
	
	
	/**
	 * 全部四教课程
	 * @param req
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/webcoachList")
	public String webcoachList(HttpServletRequest req)throws Exception{
		List<Coach> coachList=coachService.queryCoachList(null, null);
		req.setAttribute("coachList", coachList);
		//查询私教课程、
		Course ser = new Course();
		ser.setUsertype(1);
		ser.setState(1);//审核通过
		List<Course> courseList=courseService.queryCourseList(ser, null);
		req.setAttribute("courseList", courseList);
		/** 分页代码  结束 **/
		return "/web/coachList.jsp";
	}
	
	
	@RequestMapping(value="/togonggaoDetail")
	public String togonggaoDetail(HttpServletRequest request)throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Gonggao gonggao=gonggaoService.queryGonggaoById(id);
		
		request.setAttribute("gonggao", gonggao);
		return "/web/gonggaoDetail.jsp";
	}
	
	
	
	@RequestMapping(value="/list")
	public String list(HttpServletRequest req) throws Exception {
		/** 分页代码  拷贝这一 **/
		int offset = 0;  //记录偏移量，hibernate数据分页用到
		int counts = 0;  //总记录数
		try {
			offset = Integer.parseInt(req.getParameter("pager.offset"));
		} catch (Exception e) {
		}
		PageBean page = new PageBean(offset);
		page.setPageSize(PAGESIZE);
		Course ser = new Course();
		ser.setUsertype(0);
		ser.setState(1);//审核通过
		List<Course> courseList=courseService.queryCourseList(ser, page);
		req.setAttribute("courseList", courseList);

		/** 分页代码  开始**/
		req.setAttribute("itemSize",counts);
		int page_count = counts % PageBean.PAGE_IETM == 0 ? counts / PageBean.PAGE_IETM : counts / PageBean.PAGE_IETM + 1;
		req.setAttribute("pageItem",PageBean.PAGE_IETM);
		req.setAttribute("pageTotal",page_count);
		/** 分页代码  拷贝这一�? 结束 **/
		return "/web/list.jsp";
	}
	
	@RequestMapping(value="/chakanXM")
	public String chakanXM(int id,HttpServletRequest request) throws Exception{
		if(null!=request.getSession().getAttribute("user")){
			Course course = courseService.queryCourseById(id);
			
			Coach coach = coachService.queryCoachById(course.getCoachid());
			course.setCoachname(coach.getName());
			request.setAttribute("course",course);
			return "/web/xmDetail.jsp";
		}else{
			return "/web/login.jsp";
		}
	}

	
	

	
	@RequestMapping(value="/toyuyue")
	public String toyuyue(int id,HttpServletRequest request) throws Exception{
		if(null!=request.getSession().getAttribute("user")){
			User user = (User) request.getSession().getAttribute("user");
			Course course = courseService.queryCourseById(id);
			request.setAttribute("course",course);
			return "/web/yuyue.jsp";
		}else{
			return "/web/login.jsp";
		}
	}
	
	@RequestMapping(value="/yuyue")
	public String yuyue(Order ord, HttpServletRequest request) throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		if(null!=user){
			ord.setUid(user.getId());
			ord.setCdate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			ord.setState("预约");
			Order ser = new Order();
			ser.setUid(user.getId());
			ser.setCourseid(ord.getCourseid());
			int count = orderService.getCount(ser);
			if(count>0){
				request.setAttribute("message","此课程已预约");
				request.setAttribute("path","chakanXM.action");
				request.setAttribute("id", ord.getCourseid());
			}else {
				orderService.insertOrder(ord);
				request.setAttribute("message","预约成功");
				request.setAttribute("path","myorderList.action");
				
			}
			return "common/succeed1.jsp";
		}else{
			return "/web/login.jsp";
		}
	}
	
	
	
	@RequestMapping(value="/myorderDel")
	public String myorderDel(HttpServletRequest request) throws Exception{
		
		int id = Integer.parseInt(request.getParameter("id"));
		orderService .deleteOrder(id);
	
		request.setAttribute("message","操作成功");
		request.setAttribute("path","myorderList.action");
		return "common/succeed.jsp";
	}
	
	
	@RequestMapping(value="/tuiyue")
	public String tuiyue(HttpServletRequest request) throws Exception{
		int id = Integer.parseInt(request.getParameter("id"));
		Order order=orderService.queryOrderById(id);
		//取消
		order.setState("取消");
		orderService .updateOrder(order);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","myorderList.action");
		request.setAttribute("id",order.getUid());
		return "common/succeed1.jsp";
	}
	
	
	@RequestMapping(value="/myorderList")
	public String myorderList(HttpServletRequest req) throws Exception{
		
		if(null != req.getSession().getAttribute("user")){
			/** 分页代码  拷贝这一 **/
			int offset = 0;  //记录偏移量，hibernate数据分页用到
			int counts = 0;  //总记录数
			try {
				offset = Integer.parseInt(req.getParameter("pager.offset"));
			} catch (Exception e) {
			}
			PageBean page = new PageBean(offset);
			
			User user = (User) req.getSession().getAttribute("user");
			Order ser = new Order();
			ser.setUid(user.getId());
			counts=orderService .getCount(ser);
			List<Order> orderList=orderService.queryOrderList(ser, page);
			if(orderList!=null&&orderList.size()>0){
				for (Order order : orderList) {
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
			/** 分页代码  开始**/
			req.setAttribute("itemSize",counts);
			int page_count = counts % PageBean.PAGE_IETM == 0 ? counts / PageBean.PAGE_IETM : counts / PageBean.PAGE_IETM + 1;
			req.setAttribute("pageItem",PageBean.PAGE_IETM);
			req.setAttribute("pageTotal",page_count);
			/** 分页代码  拷贝这一�? 结束 **/
			return "/web/myorder.jsp";
		
		}else{
			return "/web/login.jsp";
		}
		
	}
	
	
	
	
	
	
	
	
	@RequestMapping(value="/myrecordList")
	public String myrecordList(HttpServletRequest req)  throws Exception{
		User user = (User) req.getSession().getAttribute("user");
		if(user!=null){
			/** 分页代码  拷贝这一段  开始 **/
			int offset = 0;  //记录偏移量，hibernate数据分页用到
			int counts = 0;  //总记录数
			try {
				offset = Integer.parseInt(req.getParameter("pager.offset"));
			} catch (Exception e) {
			}
			PageBean page = new PageBean(offset);
			Jilu ser = new Jilu();
			ser.setUid(user.getId());
			counts= jiluService.getCount(ser);
			List<Jilu> recordList=jiluService.queryJiluList(ser,page);
			
			
			req.setAttribute("recordList",recordList);
			
			/** 分页代码  拷贝这一段  开始 **/
			req.setAttribute("itemSize",counts);
			int page_count = counts % PageBean.PAGE_IETM == 0 ? counts / PageBean.PAGE_IETM : counts / PageBean.PAGE_IETM + 1;
			req.setAttribute("pageItem",PageBean.PAGE_IETM);
			req.setAttribute("pageTotal",page_count);
			/** 分页代码  拷贝这一段  结束 **/
			return  "/web/myrecord.jsp";
		}else{
			return "/web/login.jsp";
		}
		
	}
	
	@RequestMapping(value="/tochongzhi")
	public String tochongzhi(HttpServletRequest req) throws Exception{
		
		
		return "/web/chongzhi.jsp";
	}
	
	
	
	@RequestMapping(value="/chongzhi")
	public String chongzhi(Jilu jilu,HttpServletRequest req) throws Exception{
		User user = (User) req.getSession().getAttribute("user");
		if(user!=null){
			jilu.setUid(user.getId());
			jilu.setType(1);
			jilu.setCdate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			jiluService.insertJilu(jilu);
			user.setJifen(user.getJifen()+jilu.getQian());
			userService.updateUser(user);
			req.getSession().setAttribute("user", user);
			req.setAttribute("message","充值成功");
			req.setAttribute("path","myrecordList.action");
			return "common/succeed.jsp";
		}else{
			return "/web/login.jsp";
		}
		
	}

	@RequestMapping(value="/xiugaiUser")
	public String xiugaiUser(User user,HttpServletRequest req) throws Exception{
		
		userService.updateUser(user);
		req.getSession().setAttribute("user", user);
		req.setAttribute("message","保存成功");
		req.setAttribute("path","web/userinfo.jsp");
		return "common/succeed.jsp";
	}

	
	@RequestMapping(value="/tocoachDetail")
	public String tocoachDetail(HttpServletRequest request)throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		Coach coach = coachService.queryCoachById(id);
		request.setAttribute("coach", coach);
		//查询私教课程、
		Course ser = new Course();
		ser.setUsertype(1);
		ser.setCoachid(id);
		ser.setState(1);//审核通过
		List<Course> courseList=courseService.queryCourseList(ser, null);
		request.setAttribute("courseList", courseList);
		return "/web/coachDetail.jsp";
	}

}
