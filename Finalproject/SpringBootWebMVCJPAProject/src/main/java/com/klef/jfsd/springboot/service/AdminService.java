package com.klef.jfsd.springboot.service;
import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
public interface AdminService 
{
	public Admin checkadminlogin(String uname,String pwd);

    public List<Student> viewallstus();
    public Student viewstubyid(int sid);
    public String deletestu(int sid);
    public long studentcount();  //count(*)
    public int updatestustatus(int sid,boolean status);	



    public List<Faculty> viewallfacs();
    public Faculty viewfacbyid(int fid);
    public String deletefac(int fid);
    public long facultycount();  //count(*)
    public int updatefacstatus(int fid,boolean status);	


}
