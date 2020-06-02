package com.controller;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Coach;
import com.model.Jilu;
import com.model.User;
import com.service.JiluService;
import com.service.UserService;
import com.util.Config;
import com.util.PageBean;
@Controller
public class UserAction{

	
	@Autowired
	private UserService userService;
	@Autowired
	private JiluService jiluService;
	
	
	@RequestMapping(value="/userList")
	public String userList(HttpServletRequest req)throws Exception{
		
		int offset = 0;  //记录偏移量，hibernate数据分页用到
		int counts = 0;  //总记录数
		try {
			offset = Integer.parseInt(req.getParameter("pager.offset"));
		} catch (Exception e) {
		}
		String seruname = req.getParameter("seruname");
		User ser = new User();
		ser.setName(seruname);
		
		PageBean page = new PageBean(offset);
		counts=userService.getCount(ser);
		List<User> userList=userService.queryUserList(ser, page);
		req.setAttribute("seruname", seruname);
		req.setAttribute("userList", userList);
		/** 分页代码   开始 **/
		req.setAttribute("itemSize",counts);
		int page_count = counts % PageBean.PAGE_IETM == 0 ? counts / PageBean.PAGE_IETM : counts / PageBean.PAGE_IETM + 1;
		req.setAttribute("pageItem",PageBean.PAGE_IETM);
		req.setAttribute("pageTotal",page_count);
		/** 分页代码   结束 **/
		return "/man/user/userList.jsp";
	}


	

	
	
	@RequestMapping(value="/userAdd")
	public String userAdd(User user,HttpServletRequest request)throws Exception{
		User ser = new User();
		ser.setUname(user.getUname());
		
		List<User> list = userService.queryUserList(ser, null);
		
		if(list!=null&&list.size()>0){
			request.setAttribute("message","用户名已存在");
			request.setAttribute("path","/man/user/userAdd.jsp");
		}else {
			userService.insertUser(user);
			//添加首次充值记录
			Jilu jilu = new Jilu();
			jilu.setCdate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			jilu.setQian(user.getJifen());
			jilu.setUid(user.getId());
			jilu.setType(1);
			jiluService.insertJilu(jilu);
			
			request.setAttribute("message","添加成功");
			request.setAttribute("path","userList.action");
			
		}
		return "common/succeed.jsp";
		
	}
	
	
	
	
	
	@RequestMapping(value="/userDel")
	public String userDel(HttpServletRequest request) throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		userService.deleteUser(id);
		
		request.setAttribute("message","操作成功");
		request.setAttribute("path","userList.action");
		return "common/succeed.jsp";
	}
	
	@RequestMapping(value="/userToAdd")
	public String userToAdd(HttpServletRequest req) throws Exception {
		 

		return "/man/user/userAdd.jsp";
	}
	@RequestMapping(value="/touserEdit")
	public String touserEdit(HttpServletRequest request) throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		User user = userService.queryUserById(id);
		request.setAttribute("user", user);
		
		return "/man/user/userEdit.jsp";
	}
	@RequestMapping(value="/touserView")
	public String touserView(HttpServletRequest request)throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		User user = userService.queryUserById(id);
		request.setAttribute("user", user);
		
		return "/man/user/userView.jsp";
	}
	@RequestMapping(value="/userEdit")
	public String userEdit(User user,HttpServletRequest request) throws Exception {
		userService.updateUser(user);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","userList.action");
		return "common/succeed.jsp";
	}
	@RequestMapping(value="/userpwd")
	public String userpwd(HttpServletRequest request) throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		User user = userService.queryUserById(id);
		user.setUpwd(Config.DEFAULT_PWD);
		userService.updateUser(user);
		request.setAttribute("message","操作成功");
		request.setAttribute("path","userList.action");
		return "common/succeed.jsp";
	}
	
	
}
