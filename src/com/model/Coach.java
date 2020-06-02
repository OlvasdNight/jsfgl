package com.model;

/**
 * 教练
 * @author Administrator
 *
 */
public class Coach implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;

	/**编号*/
	private int id;
    /** 头像*/
	private String url;
    /** 账号*/
	private String uname;
    /** 密码*/     
	private String upwd;
        
    /**姓名*/    
	private String name;
	/**性别*/
	private String sex;
	/**性别*/
	private String age;
	/**电话*/
	private String tel;
	/**专业特长*/
	private String zhuanye;
	
	/** 状态0无权限   1 有权限*/
	private Integer state;
	

	public Coach() {
	}


	


	public int getId() {
		return id;
	}





	public void setId(int id) {
		this.id = id;
	}





	public String getUname() {
		return uname;
	}


	public void setUname(String uname) {
		this.uname = uname;
	}


	public String getUpwd() {
		return upwd;
	}


	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getZhuanye() {
		return zhuanye;
	}

	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	

	
	
	
}
