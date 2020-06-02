package com.model;

/**
 * 课程
 * @author Administrator
 *
 */
public class Course implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;

	
	private Integer id;
	
	private Integer xmid;
	
	private String xmname;
	//课程名称
	private String name;
        
         
	private String time;
        
    //课程图片     
	private String url;
	//教练id
	private Integer coachid;
	//教练名称
	private String coachname;
	    

	private String jiage;
	
	private Integer state;
	
	private Integer usertype;
	
	private String miaoshu;
	
	public Course() {
		
	}

	
	
	
	public Course(Integer usertype) {
		super();
		this.usertype = usertype;
	}




	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getXmid() {
		return xmid;
	}

	public void setXmid(Integer xmid) {
		this.xmid = xmid;
	}

	public String getXmname() {
		return xmname;
	}

	public void setXmname(String xmname) {
		this.xmname = xmname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getCoachid() {
		return coachid;
	}

	public void setCoachid(Integer coachid) {
		this.coachid = coachid;
	}

	public String getCoachname() {
		return coachname;
	}

	public void setCoachname(String coachname) {
		this.coachname = coachname;
	}

	public String getJiage() {
		return jiage;
	}

	public void setJiage(String jiage) {
		this.jiage = jiage;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getMiaoshu() {
		return miaoshu;
	}

	public void setMiaoshu(String miaoshu) {
		this.miaoshu = miaoshu;
	}




	public Integer getUsertype() {
		return usertype;
	}




	public void setUsertype(Integer usertype) {
		this.usertype = usertype;
	}

	
	
	
	
}
