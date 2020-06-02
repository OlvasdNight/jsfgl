package com.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.Admin;
import com.model.Coach;
import com.model.User;

/**
 * 登陆服务
 * @author Administrator
 *
 */
@Service
public class loginService {
	/** 管理员*/
	@Autowired
	private AdminService adminService;
	/** 教练*/
	@Autowired
	private CoachService coachService;
	
	
	@Autowired
	private UserService userService;
	
	@SuppressWarnings("unchecked")
	public String login(String userName, String userPw,  Integer userType) throws Exception {
		System.out.println("userType" + userType);
		
		try {
			Thread.sleep(700);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String result = "no";
		
		WebContext ctx = WebContextFactory.get();
		HttpSession session = ctx.getSession();

		
	
		
		if(userType==0){//管理员登录
			Admin ser = new Admin();
			ser.setUname(userName);
			ser.setUpwd(userPw);

			List<Admin> adminList = adminService.queryAdminList(ser, null);
			if (adminList.size() == 0) {
				result = "no";
			} else {
				Admin admin = (Admin) adminList.get(0);
				 session.setAttribute("userType",userType);
				session.setAttribute("admin", admin);
				result = "yes";
			}
		}
		
		
		if(userType==1){//用户登录
			Coach ser = new Coach();
			ser.setUname(userName);
			ser.setUpwd(userPw);
			ser.setState(1);
	    	List<Coach> coachList = coachService.queryCoachList(ser, null);
			if(coachList==null || coachList.size()==0){
				 result="no";
			} else {
				Coach coach = coachList.get(0);
	            session.setAttribute("coach", coach);
	            result="yes";
			}
		}
		session.setAttribute("userType",userType);

		return result;
	}

	public String userlogin(String userName,String userPw) throws Exception {
		try {
			Thread.sleep(700);
		} catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String result="no";
		

	    
		User ser = new User();
		ser.setUname(userName);
		ser.setUpwd(userPw);

		List<User> userList = userService.queryUserList(ser, null);
		if(userList==null || userList.size()==0){
			 result="no";
		} else {
			 WebContext ctx = WebContextFactory.get(); 
			 HttpSession session=ctx.getSession(); 
			 ser = userList.get(0);
			 session.setAttribute("userType",2);
             session.setAttribute("user", ser);
             result="yes";
		}
	    
	  
		return result;
	}
	
	
	
	
	
	public String adminPwEdit(String userPwNew) throws Exception {
		System.out.println("DDDD");
		try {
			Thread.sleep(700);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		WebContext ctx = WebContextFactory.get();
		HttpSession session = ctx.getSession();
		int userType = Integer.parseInt(String.valueOf(session.getAttribute("userType")));
		if(userType==0){
			Admin admin = (Admin) session.getAttribute("admin");
			admin.setUpwd(userPwNew);
			adminService.updateAdmin(admin);
			session.setAttribute("admin", admin);
		}else if(userType==1) {
			Coach coach = (Coach) session.getAttribute("banker");
			coach.setUpwd(userPwNew);
			coachService.updateCoach(coach);
			session.setAttribute("coach", coach);
			
		}
		Admin admin = (Admin) session.getAttribute("admin");
		admin.setUpwd(userPwNew);
		adminService.updateAdmin(admin);
		session.setAttribute("admin", admin);

		return "yes";
	}
	
	public String userPwEdit(String userPwNew) throws Exception {
		System.out.println("DDDD");
		try {
			Thread.sleep(700);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		WebContext ctx = WebContextFactory.get();
		HttpSession session = ctx.getSession();
		
		Coach coach = (Coach) session.getAttribute("admin");
		coach.setUpwd(userPwNew);
		coachService.updateCoach(coach);
		session.setAttribute("coach", coach);

		return "yes";
	}
	
	

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public CoachService getCoachService() {
		return coachService;
	}

	public void setCoachService(CoachService coachService) {
		this.coachService = coachService;
	}



	

}
