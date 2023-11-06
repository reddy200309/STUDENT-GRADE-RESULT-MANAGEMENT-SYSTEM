package com.klef.jfsd.springboot.service;       

import com.klef.jfsd.springboot.model.Faculty;

public interface FacultyService {
	public String addfaculty(Faculty fac);
	public String updatefaculty(Faculty fac);

	
	public Faculty checkfaclogin(String email,String pwd);

}
