package com.model;



public class Chart implements java.io.Serializable{
	
private static final long serialVersionUID = 450813258867233717L;
	
	private String sex;
	
	private Integer ratio;
	
	private Integer num;

	

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getRatio() {
		return ratio;
	}

	public void setRatio(Integer ratio) {
		this.ratio = ratio;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}
	
}