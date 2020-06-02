package com.mapper;

import java.util.List;
import java.util.Map;

import com.model.Course;

public interface CourseMapper {
	public List<Course> findCourseList();
	
	public List<Course> query(Map<String,Object> inputParam);
	
	int getCount(Map<String,Object> inputParam);
	
	public int insertCourse(Course course);
	
	public int deleteCourse(int id);
	
	public int updateCourse(Course course);
	
	public Course queryCourseById(int id);
	
}
