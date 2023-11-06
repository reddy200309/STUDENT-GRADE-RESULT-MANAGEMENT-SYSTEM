package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Student;

public interface StudentService {
	public String addstudent(Student stu);
	public Student viewstudentbyid(int sid);
	public Student checkstulogin(String email,String pwd);

}
