package com.service;
import java.util.List;

import com.model.Course;
import com.util.PageBean;

public interface CourseService{
	
    public List<Course> queryCourseList(Course course,PageBean page) throws Exception;
 
	public int insertCourse(Course course) throws Exception ;
	
	public int deleteCourse(int id) throws Exception ;
	
	public int updateCourse(Course course) throws Exception ;
	
	public Course queryCourseById(int id) throws Exception ;
		
	int getCount(Course course);


}
