package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="faculty_table")
public class Faculty {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
    @Column(name="universityid",length = 10)
	private String universityid;
    
    @Column(name="faculty_fname",nullable=false,length = 50)
	private String fullname;
    
    @Column(name="faculty_gender",length = 10)
	private String gender;
    
	@Column(name="faculty_dob",length = 20)
	private String dateofbirth;
	
	@Column(name="faculty_department",length = 20)
	private String department;
	
	@Column(name="faculty_location")
	private String location;
	
    @Column(name="faculty_email",nullable=false,length = 50)
	private String email;
    
    @Column(name="faculty_phone",nullable=false,length = 10)
	private String phonenumber;
    
    @Column(name="student_password",nullable=false,length = 10)
	private String password;
    
    @Column(name="stu_active",nullable=false)
	private boolean active;
    
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
    
	public String getUniversityid() {
		return universityid;
	}
	public void setUniversityid(String universityid) {
		this.universityid = universityid;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
	@Override
	public String toString() {
		return "Faculty [id=" + id + ", universityid=" + universityid + ", fullname=" + fullname + ", gender=" + gender
				+ ", dateofbirth=" + dateofbirth + ", department=" + department + ", location=" + location + ", email="
				+ email + ", phonenumber=" + phonenumber + ", password=" + password + ", active=" + active + "]";
	}
	

}
