package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Faculty;

@Repository
public interface FacultyRepository extends JpaRepository<Faculty, Integer>
{
	@Query("select f from Faculty f where email=?1 and password=?2")
	public Faculty checkfaclogin(String email ,String pwd);

}
