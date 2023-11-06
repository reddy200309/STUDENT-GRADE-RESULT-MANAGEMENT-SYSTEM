package com.klef.jfsd.springboot.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.FacultyService;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ClientContoller 
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private FacultyService facultyService;
	
	@GetMapping("/")
	public String main()
	{
		return "index";
	}
	
//	index
	@GetMapping("index")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@GetMapping("contact")
	public ModelAndView contact()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contact");
		return mv;
	}
	
	@GetMapping("provideendsemresult")
	public ModelAndView provideendsemresult()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("provideendsemresult");
		return mv;
	}
	
	@GetMapping("location")
	public ModelAndView location()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("location");
		return mv;
	}
	
	
	@GetMapping("endsemresult")
	public ModelAndView endsemresult()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("endsemresult");
		return mv;
	}
	
	@GetMapping("mycgpa")
	public ModelAndView mycgpa()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mycgpa");
		return mv;
	}
	
	@GetMapping("payment")
	public ModelAndView payment()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("payment");
		return mv;
	}
	
	@GetMapping("reverification")
	public ModelAndView reverification()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reverification");
		return mv;
	}
	
	
	
	
//	adminlogin
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("updatefac")
	public ModelAndView updatefac()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updatefac");
		return mv;
	}
	
	
	
	@GetMapping("adminportal")
	public ModelAndView adminportal()
	{
		long stucount=adminService.studentcount();
		long faccount=adminService.facultycount();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminportal");
		
		mv.addObject("scount", stucount);
	    mv.addObject("fcount", faccount);
		return mv;
	}
	
	
	
	
	
	
	//stusignup
	@GetMapping("stusignup")
	public ModelAndView studregistration()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("stusignup");
		return mv;
	}
	
	
	
	
	//facsignup
	@GetMapping("facsignup")
	public ModelAndView facregistration()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("facsignup");
		return mv;
	}
	
	@GetMapping("addstudent")
	public ModelAndView addstudent()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addstudent");
		return mv;
	}
	
	
	
	
	//stulogin
	@GetMapping("stulogin")
	public ModelAndView studloginpage()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("stulogin");
		return mv;
	}
	
	
	
	
	//facportal
	@GetMapping("facportal")
	public ModelAndView facinloginpage()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("facportal");
		return mv;
	}
	
	
	
	
	//checkstulogin
	@PostMapping("checkstulogin")
	public ModelAndView checkstulogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		Student stu = studentService.checkstulogin(email, pwd);
		
		if(stu!=null)
		{
			mv.setViewName("stuportal");
		}
		else
		{
			mv.setViewName("stulogin");
			mv.addObject("message", "Incorrect login details login again.....");
		}
		
		return mv;
	}
	
	
	
	
	//checkfaclogin
	@PostMapping("checkfaclogin")
	public ModelAndView checkfaclogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		Faculty fac = facultyService.checkfaclogin(email, pwd);
		if(fac!=null)
		{
			mv.setViewName("facportal");
		}
		else
		{
			mv.setViewName("faclogin");
			mv.addObject("message", "Incorrect login details login again.....");
		}
		return mv;
	}
	
	
	
	
	//checkadminlogin
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		
		Admin adm = adminService.checkadminlogin(username, pwd);
		if(adm!=null)
		{
			mv.setViewName("adminportal");
			
			long stucount=adminService.studentcount();
		    long faccount=adminService.facultycount();
		      
		    mv.addObject("scount", stucount);
		    mv.addObject("fcount", faccount);
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("message", "Incorrect login details login again.....");
		}
		return mv;
	}
	
	
	
	
	
	//stuportal
	  @GetMapping("stuportal")
	  public ModelAndView adminhome()
	  {  
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("stuportal");
	    return mv;
	  }
	  
	  
	  
	  
	//faclogin
	@GetMapping("faclogin")
	public ModelAndView facloginpage()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("faclogin");
		return mv;
	}
	
	
	
	
	//stureg
	@PostMapping("stureg")
	 public ModelAndView insertaction(HttpServletRequest request)
	 {
	  String msg=null;
	  
	  ModelAndView mv=new ModelAndView();
	  
	  try
	  {
		String universityid = request.getParameter("universityid");
		String fullname = request.getParameter("fullname");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String dateofbirth = request.getParameter("dateofbirth");
	    String department = request.getParameter("department");
	    String location = request.getParameter("location");

		
		
		Student stu = new Student();
		
		stu.setUniversityid(universityid);
		stu.setFullname(fullname);
		stu.setEmail(email);
		stu.setPhonenumber(contact);
		stu.setPassword(password);
		stu.setGender(gender);
		stu.setDateofbirth(dateofbirth);
		stu.setDepartment(department);
		stu.setDateofbirth(location);
		
		msg=studentService.addstudent(stu);
		mv.setViewName("stulogin");
		mv.addObject("message", msg);
	  }
	  catch(Exception e)
	  {
	   msg=e.getMessage();
	   mv.setViewName("displayerror");
	   mv.addObject("message",msg);
	  }
	  
	  return mv;
	 }
	
	
	@PostMapping("adddstudent")
	 public ModelAndView adddstudent(HttpServletRequest request)
	 {
	  String msg=null;
	  
	  ModelAndView mv=new ModelAndView();
	  
	  try
	  {
		String universityid = request.getParameter("universityid");
		String fullname = request.getParameter("fullname");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String dateofbirth = request.getParameter("dateofbirth");
	    String department = request.getParameter("department");
	    String location = request.getParameter("location");

		
		
		Student stu = new Student();
		
		stu.setUniversityid(universityid);
		stu.setFullname(fullname);
		stu.setEmail(email);
		stu.setPhonenumber(contact);
		stu.setPassword(password);
		stu.setGender(gender);
		stu.setDateofbirth(dateofbirth);
		stu.setDepartment(department);
		stu.setDateofbirth(location);
		
		msg=studentService.addstudent(stu);
		mv.setViewName("addstudent");
		mv.addObject("message", msg);
	  }
	  catch(Exception e)
	  {
	   msg="Student added successfully";
	   mv.setViewName("displayerror");
	   mv.addObject("message",msg);
	  }
	  
	  return mv;
	 }
	
	
	
	
	//facreg
	@PostMapping("facreg")
	public ModelAndView insertfaculty(HttpServletRequest request)
	{
		String msg=null;
		  
		  ModelAndView mv=new ModelAndView();
		  
		  try
		  {
			String universityid = request.getParameter("universityid");
			String fullname = request.getParameter("fullname");
			String email = request.getParameter("email");
			String contact = request.getParameter("contact");
			String password = request.getParameter("password");
			String gender = request.getParameter("gender");
			String dateofbirth = request.getParameter("dateofbirth");
		    String department = request.getParameter("department");
		    String location = request.getParameter("location");

			
			
			Faculty fac = new Faculty();
			
			fac.setUniversityid(universityid);
			fac.setFullname(fullname);
			fac.setEmail(email);
			fac.setPhonenumber(contact);
			fac.setPassword(password);
			fac.setGender(gender);
			fac.setDateofbirth(dateofbirth);
			fac.setDepartment(department);
			fac.setDateofbirth(location);
			
			msg=facultyService.addfaculty(fac);
			mv.setViewName("faclogin");
			mv.addObject("message", msg);
		  }
		  catch(Exception e)
		  {
		   msg=e.getMessage();
		   mv.setViewName("displayerror");
		   mv.addObject("message",msg);
		  }
		return mv;
		
	}
	
	
	
	  @GetMapping("viewallfacs")
	  public ModelAndView viewallfacs()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewallfacs");
	    
	    List<Faculty> faclist = adminService.viewallfacs();
	    mv.addObject("facdata", faclist);
	    
	    return mv;
	  }

	  @GetMapping("viewallstus")
	  public ModelAndView viewallstus()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewallstus");
	    
	    List<Student> stulist = adminService.viewallstus();
	    mv.addObject("studata", stulist);
	    
	    return mv;
	  }
	  
	  
	  
	  @GetMapping("view")
	  public ModelAndView viewstudemo(@RequestParam("id") int sid)
	  {
	    Student stu = adminService.viewstubyid(sid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewstubyid");
	    mv.addObject("stu", stu);
	    return mv;
	  }
	  
	  
	  
	  
	  
	  @GetMapping("vieew")
	  public ModelAndView viewfacdemo(@RequestParam("id") int fid)
	  {
	    Faculty fac = adminService.viewfacbyid(fid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewfacbyid");
	    mv.addObject("fac", fac);
	    return mv;
	  }
	  
	  
	  
	  @GetMapping("deletefac")
	  public ModelAndView deletefac()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("deletefac");
	    
	    List<Faculty> faclist =  adminService.viewallfacs();
	    
	    mv.addObject("facdata", faclist);
	    
	    return mv;
	  }
	  
	  
	  @GetMapping("delete/{id}")
	  public String deleteaction(@PathVariable("id") int fid)
	  {
	    adminService.deletefac(fid);
	    return "redirect:/deletefac";
	  }
	  
	  
	  @GetMapping("deletestu")
	  public ModelAndView deletestu()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("deletestu");
	    
	    List<Student> stulist =  adminService.viewallstus();
	    
	    mv.addObject("studata", stulist);
	    
	    return mv;
	  }
	  
	  
	  @GetMapping("deleteee/{id}")
	  public String deletestudent(@PathVariable("id") int sid)
	  {
	    adminService.deletestu(sid);
	    return "redirect:/deletestu";
	  }
	  
	  
	  @GetMapping("updatefacstatus")
	  public ModelAndView updatefacstatus()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("updatefacstatus");
	    
	    List<Faculty> faclist = adminService.viewallfacs();
	    mv.addObject("facdata", faclist);
	    
	    return mv;
	  }
	  
	  @GetMapping("setstatus")
	  public ModelAndView setstatusaction(@RequestParam("id") int fid, @RequestParam("status") boolean status)
	  {
		  int n = adminService.updatefacstatus(fid, status);
		     
		     ModelAndView mv = new ModelAndView();
		     mv.setViewName("updatefacstatus");
		     
		     List<Faculty> faclist = adminService.viewallfacs();
		     mv.addObject("facdata", faclist);
		     
		     if(n>0)
		     {
		       mv.addObject("message", "Status Updated Successfully");
		     }
		     else
		     {
		       mv.addObject("message", "Failed to Update Status");
		     }
		     return mv;
	  }
	  
	  
	  @GetMapping("updatestustatus")
	  public ModelAndView updatestustatus()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("updatestustatus");
	    
	    List<Student> stulist = adminService.viewallstus();
	    mv.addObject("studata", stulist);
	    
	    return mv;
	  }
	  
	  @GetMapping("settstatus")
	  public ModelAndView setstatusactionn(@RequestParam("id") int sid, @RequestParam("status") boolean status)
	  {
		  int n = adminService.updatestustatus(sid, status);
		     
		     ModelAndView mv = new ModelAndView();
		     mv.setViewName("updatestustatus");
		     
		     List<Student> stulist = adminService.viewallstus();
		     mv.addObject("studata", stulist);
		     
		     if(n>0)
		     {
		       mv.addObject("message", "Status Updated Successfully");
		     }
		     else
		     {
		       mv.addObject("message", "Failed to Update Status");
		     }
		     return mv;
	  }
	  
	  
	  
	  
	  
	
	
	
	
	
	
	
	
	
}
