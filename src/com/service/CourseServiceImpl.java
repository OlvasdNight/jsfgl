package com.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.CourseMapper;
import com.model.Course;
import com.util.PageBean;
@Service
public class CourseServiceImpl implements CourseService{
        
    @Autowired
	private CourseMapper courseMapper;


	public List<Course> queryCourseList(Course course,PageBean page) throws Exception {
		Map<String, Object> map =getQueryMap(course, page);
		
		List<Course> getCourse = courseMapper.query(map);
		return getCourse;
	}
	
	@Override
	public int getCount(Course course) {
		Map<String, Object> map = getQueryMap(course, null);
		int count = courseMapper.getCount(map);
		return count;
	}
	
	private Map<String, Object> getQueryMap(Course course,PageBean page){
		Map<String, Object> map = new HashMap<String, Object>();
		if(course!=null){
			map.put("id", course.getId());
			map.put("xmid", course.getXmid());
			map.put("coachid", course.getCoachid());
			map.put("name", course.getName());
			map.put("state", course.getState());
			map.put("usertype", course.getUsertype());
		}
		PageBean.setPageMap(map, page);
		return map;
	}
	
	

	public int insertCourse(Course course) throws Exception {
		return courseMapper.insertCourse(course);
	}

	public int deleteCourse(int id) throws Exception {
		return courseMapper.deleteCourse(id);
	}

	public int updateCourse(Course course) throws Exception {
		return courseMapper.updateCourse(course);
	}
	
	public Course queryCourseById(int id) throws Exception {
		return courseMapper.queryCourseById(id);
	}

 
}
