package com.zanmi.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.zanmi.model.StudentAttendance;
import com.zanmi.service.StudentAttendanceService;

@RestController
public class StudentAttendanceController {
	
	@Autowired
	StudentAttendanceService studentAttendanceService;
	
	
	//-------------------Saving studentAttendance--------------------------------------------------------
	
		 @RequestMapping(value = "/studentAttendance/", method = RequestMethod.POST)
		    public ResponseEntity<Void> saveStudentAttendance(@RequestBody List<StudentAttendance> studentsAttendance,    UriComponentsBuilder ucBuilder) {
		       // System.out.println("saving Student Attendance " + studentAttendance.getStuId());
		 
		        
		 System.out.println(studentsAttendance);

		 studentAttendanceService.saveStudentsAttendance(studentsAttendance);
		  HttpHeaders headers = new HttpHeaders();
	      //  headers.setLocation(ucBuilder.path("/student/{id}").buildAndExpand(student.getStuId()).toUri());
	        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
		    }
		 
		 
		 
	 @RequestMapping(value = "/studentAttendance/{date}", method = RequestMethod.GET)
	    public ResponseEntity<List<StudentAttendance>> listAllStudentAttendanceByDate(@PathVariable("date") @DateTimeFormat(pattern="yyyy-MM-dd") Date  date) {
		 
		List<StudentAttendance> studentsAttendance= studentAttendanceService.getAllStudentsAttendaceByDate(date);
		for(StudentAttendance studentAttendance:studentsAttendance)
		System.out.println(studentAttendance.getStuId());
		
		if(studentsAttendance.isEmpty()){
			
			 return new ResponseEntity<List<StudentAttendance>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<StudentAttendance>>(studentsAttendance, HttpStatus.OK);
		
	 }
	 /*
	 @RequestMapping(value = "/studentAttendance/{date}", method = RequestMethod.GET)
	    public ResponseEntity<Boolean> isStudentAttendanceByDateExist(@PathVariable("date") Date date) {
		 
		List<StudentAttendance> studentsAttendance= studentAttendanceService.getAllStudentsAttendaceByDate(date);
		for(StudentAttendance studentAttendance:studentsAttendance)
		System.out.println(studentAttendance.getStuId());
		
		if(studentsAttendance.isEmpty()){
			
			 return new ResponseEntity<Boolean>(false,HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
     }
     return new ResponseEntity<Boolean>(true, HttpStatus.OK);
		
	 }*/
	 
	  //-------------------Create a StudentAttendance--------------------------------------------------------
	     
	    /*@RequestMapping(value = "/studentAttendance/", method = RequestMethod.POST)
	    public ResponseEntity<Void> createUser(@RequestBody StudentAttendance studentAttendance,    UriComponentsBuilder ucBuilder) {
	        System.out.println("Creating Student Attendance " + studentAttendance.getStuId());
	 
	        
	 
	        studentAttendanceService.saveStudentAttendace(studentAttendance);
	 
	        HttpHeaders headers = new HttpHeaders();
	        headers.setLocation(ucBuilder.path("/studentAttendance/{id}").buildAndExpand(studentAttendance.getStuAttendaceId()).toUri());
	        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
	    }*/
	 
	    
	     
	    //------------------- Update a StudentAttendance --------------------------------------------------------
	     
	    @RequestMapping(value = "/studentAttendance/{date}/{stuId}", method = RequestMethod.PUT)
	    public ResponseEntity<StudentAttendance> updateStudentAttendanceByDate( @PathVariable(value = "date") Date date, 
	    	      @PathVariable(value = "stuId") int stuId, @RequestBody StudentAttendance studentAttendance) {
	        System.out.println("Updating Student " + stuId);
	         
	        StudentAttendance currentStudentAttendance = studentAttendanceService.findAttendanceByDateAndStudentId(date, stuId);
	         
	        if (currentStudentAttendance==null) {
	            System.out.println("currentStudentAttendance with id " + stuId + " not found");
	            return new ResponseEntity<StudentAttendance>(HttpStatus.NOT_FOUND);
	        }
	 
	        currentStudentAttendance.setAttendanceDate(studentAttendance.getAttendanceDate());
	        currentStudentAttendance.setEmpId(studentAttendance.getEmpId());
	        currentStudentAttendance.setStuId(studentAttendance.getStuId());
	        currentStudentAttendance.setStuStatus(studentAttendance.getStuStatus());
	         
	        studentAttendanceService.updateStudentAttendace(currentStudentAttendance);
	        return new ResponseEntity<StudentAttendance>(currentStudentAttendance, HttpStatus.OK);
	    }
	 
	    @RequestMapping(value = "/studentAttendance/{attendanceId}", method = RequestMethod.PUT)
	    public ResponseEntity<StudentAttendance> updateStudentAttendance( @PathVariable(value = "attendanceId") int attendanceId, 
	    	       @RequestBody StudentAttendance studentAttendance) {
	        System.out.println("Updating Student Attendance " + attendanceId);
	         
	        StudentAttendance currentStudentAttendance = studentAttendanceService.findAttendanceByAttendanceId(attendanceId);
	         
	        if (currentStudentAttendance==null) {
	            System.out.println("currentStudentAttendance with id " + attendanceId + " not found");
	            return new ResponseEntity<StudentAttendance>(HttpStatus.NOT_FOUND);
	        }
	 
	        currentStudentAttendance.setAttendanceDate(studentAttendance.getAttendanceDate());
	        currentStudentAttendance.setEmpId(studentAttendance.getEmpId());
	        currentStudentAttendance.setStuId(studentAttendance.getStuId());
	        currentStudentAttendance.setStuStatus(studentAttendance.getStuStatus());
	         
	        studentAttendanceService.updateStudentAttendace(currentStudentAttendance);
	        return new ResponseEntity<StudentAttendance>(currentStudentAttendance, HttpStatus.OK);
	    }
	 
	 
}
