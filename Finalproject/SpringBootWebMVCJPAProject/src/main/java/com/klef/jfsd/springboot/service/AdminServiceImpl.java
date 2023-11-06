package com.klef.jfsd.springboot.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;


@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private FacultyRepository facultyRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public List<Student> viewallstus() {
		return studentRepository.findAll();
	}

	@Override
	public Student viewstubyid(int sid) {
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

	@Override
	public String deletestu(int sid) {
		Optional<Student> obj =  studentRepository.findById(sid);
	       
	       String msg = null;
	       
	       if(obj.isPresent())
	       {
	         Student stu = obj.get();
	         
	         studentRepository.delete(stu);
	         
	         msg = "Student Deleted Successfully";
	       }
	       else
	       {
	         msg = "Student Not Found";
	       }
	       
	       return msg;
	}

	@Override
	public long studentcount() {
		return studentRepository.count();
		
	}

	@Override
	public int updatestustatus(int sid, boolean status) {
		return adminRepository.updatestustatus(sid, status);

	}

	@Override
	public List<Faculty> viewallfacs() {
		
		return facultyRepository.findAll();
	}

	@Override
	public Faculty viewfacbyid(int fid) {
        Optional<Faculty> obj =  facultyRepository.findById(fid);
        
        if(obj.isPresent())
        {
          Faculty fac = obj.get();
          
          return fac;
        }
        else
        {
          return null;
        }
	
	}

	@Override
	public String deletefac(int fid) {
		Optional<Faculty> obj =  facultyRepository.findById(fid);
	       
	       String msg = null;
	       
	       if(obj.isPresent())
	       {
	         Faculty fac = obj.get();
	         
	         facultyRepository.delete(fac);
	         
	         msg = "Faculty Deleted Successfully";
	       }
	       else
	       {
	         msg = "Faculty Not Found";
	       }
	       
	       return msg;
	}

	@Override
	public long facultycount() {
		return facultyRepository.count();
	}

	@Override
	public int updatefacstatus(int fid, boolean status) {
		return adminRepository.updatefacstatus(fid, status);

	}

	


	

	

}
