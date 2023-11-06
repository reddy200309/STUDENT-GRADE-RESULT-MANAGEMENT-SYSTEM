package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.springboot.model.Admin;



@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer>
{
	@Query("select a from Admin a where username=?1 and password=?2")
	public Admin checkadminlogin(String username, String pwd);
	
	@Modifying
	@Transactional  //commit changes
	@Query(" update Faculty f set f.active=?2 where f.id=?1 ")
	public int updatefacstatus(int fid,boolean status);
	
	@Modifying
	@Transactional  //commit changes
	@Query(" update Student s set s.active=?2 where s.id=?1 ")
	public int updatestustatus(int sid,boolean status);
	
	

}
