package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.repository.FacultyRepository;

@Service
public class FacultyServiceImpl implements FacultyService
{
	@Autowired
	private FacultyRepository facultyRepository;

	@Override
	public String addfaculty(Faculty fac) {
		facultyRepository.save(fac);
		return "Faculty Added Successfully ";
	}

	@Override
	public Faculty checkfaclogin(String email, String pwd) {
		return facultyRepository.checkfaclogin(email, pwd);
	
	}

	@Override
	public String updatefaculty(Faculty fac) {
		Faculty f = facultyRepository.findById(fac.getId()).get();
		f.setFullname(fac.getFullname());
		f.setDateofbirth(fac.getDateofbirth());
		f.setDepartment(fac.getDepartment());
		f.setEmail(fac.getEmail());
		f.setGender(fac.getGender());
		f.setLocation(fac.getLocation());
		f.setUniversityid(fac.getUniversityid());
		
		facultyRepository.save(f);
		return "Faculty Updated Successfully";
	}

}
