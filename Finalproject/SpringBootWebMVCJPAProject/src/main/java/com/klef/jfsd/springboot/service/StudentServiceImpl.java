package com.klef.jfsd.springboot.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService
{

	@Autowired
	private StudentRepository studentRepository;
	
	@Override
	public String addstudent(Student stu) {
		studentRepository.save(stu);
		return "Successfully Signup, You can login now!!";
	}

	@Override
	public Student checkstulogin(String email, String pwd) {
		return studentRepository.checkstulogin(email, pwd);
	}

	@Override
	public Student viewstudentbyid(int sid) 
	{
		Optional<Student> obj =  studentRepository.findById(sid);
	       
	       if(obj.isPresent())
	       {
	         Student stu = obj.get();
	         
	         return stu;
	       }
	       else
	       {
	         return null;
	       }
		
	}
	
	

}


