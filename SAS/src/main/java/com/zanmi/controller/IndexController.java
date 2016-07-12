package com.zanmi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {

	  @RequestMapping(value ="/" ,method = RequestMethod.GET)
	    public String getIndexPage() {
	       // return "UserManagement";
	       // return "StudentManagement";
		  return "welcome";
		// return "madanfile";
		 // return "MadanEmployee";
		//  return "StudentAttendanceManagement";
	    }
	  
	  
	  @RequestMapping(value = "/studentIndex", method = RequestMethod.GET)
	    public String getStudentManagementPage() {
	       // return "UserManagement";
	        return "StudentManagement";
		  //return "welcome";
		// return "madanfile";
		 // return "MadanEmployee";
		  //return "StudentAttendanceManagement";
	    }
	  
	  @RequestMapping(value = "/employeeIndex", method = RequestMethod.GET)
	    public String getEmployeeManagementPage() {
		// return "madanfile";
		 return "StaffManagement";
		 // return "StudentAttendanceManagement";
	    }
	  
	  @RequestMapping(value = "/studentAttendance", method = RequestMethod.GET)
	    public String getStudenAttendancePage() {
	       // return "UserManagement";
	       // return "StudentManagement";
		  //return "welcome";
		// return "madanfile";
		 // return "MadanEmployee";
		  return "StudentAttendance";
	    }
	  @RequestMapping(value = "/employeeAttendance", method = RequestMethod.GET)
	    public String getEmployeeAttendancePage() {
	       // return "UserManagement";
	       // return "StudentManagement";
		  //return "welcome";
		// return "madanfile";
		 // return "MadanEmployee";
		  return "StaffAttendance";
	    }

}