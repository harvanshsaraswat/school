package com.zanmi.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.zanmi.model.Student;
import com.zanmi.service.StudentService;

@RestController
public class StudentController {
	
	@Autowired
	StudentService studentService;
	
	 @RequestMapping(value = "/student/", method = RequestMethod.GET)
	    public ResponseEntity<List<Student>> listAllStudents() {
		 
		List<Student> students= studentService.getAllStudents();
		for(Student student:students)
		System.out.println(student.getStuName());
		
		if(students.isEmpty()){
			
			 return new ResponseEntity<List<Student>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Student>>(students, HttpStatus.OK);
		
	 }
	
	 // ------------------------- for fetching Student based on class and section  -----------------
	 
	 @RequestMapping(value = "/student/{cls}/{sec}", method = RequestMethod.GET)
	    public ResponseEntity<List<Student>> listAllStudentsBasedOnClassAndSection(@PathVariable("cls") String clas,@PathVariable("sec") String sec) {
		 System.out.println("calss"+clas+"section"+sec);
		List<Student> students= studentService.getAllStudentsBasedOnClassAndSection(clas,sec);
		for(Student student:students)
		System.out.println(student.getStuName());
		
		if(students.isEmpty()){
			
			 return new ResponseEntity<List<Student>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
     }
     return new ResponseEntity<List<Student>>(students, HttpStatus.OK);
		
	 }
	 
	//-------------------upload--------------------------------------------------------
     
	    @RequestMapping(value = "/image/", method = RequestMethod.POST)
	    public ResponseEntity<Void> createUserImage(@RequestBody Student student,    UriComponentsBuilder ucBuilder) {
	        System.out.println("Creating Student " + student.getStuName());
	 
	        
	 System.out.println(student);
	        //sotudentService.saveStudent(student);
	 
	        HttpHeaders headers = new HttpHeaders();
	        headers.setLocation(ucBuilder.path("/student/{id}").buildAndExpand(student.getStuId()).toUri());
	        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
	    }
	    
	  //-------------------Create a Student--------------------------------------------------------
	     
	    @RequestMapping(value = "/student/", method = RequestMethod.POST)
	    public ResponseEntity<Void> createUser(@RequestBody Student student,    UriComponentsBuilder ucBuilder) {
	        System.out.println("Creating Student " + student.getStuName());
	 
	        
	 
	        studentService.saveStudent(student);
	 
	        HttpHeaders headers = new HttpHeaders();
	        headers.setLocation(ucBuilder.path("/student/{id}").buildAndExpand(student.getStuId()).toUri());
	        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
	    }
	 
	    
	     
	    //------------------- Update a Student --------------------------------------------------------
	     
	    @RequestMapping(value = "/student/{id}", method = RequestMethod.PUT)
	    public ResponseEntity<Student> updateStudent(@PathVariable("id") int id, @RequestBody Student student) {
	        System.out.println("Updating Student " + id);
	         
	        Student currentStudent = studentService.findById(id);
	         
	        if (currentStudent==null) {
	            System.out.println("Student with id " + id + " not found");
	            return new ResponseEntity<Student>(HttpStatus.NOT_FOUND);
	        }
	 
	        currentStudent.setStuName(student.getStuName());
	        currentStudent.setStuPerAddress(student.getStuPerAddress());
	        currentStudent.setStuEmail(student.getStuEmail());
	         
	        studentService.updateStudent(currentStudent);
	        return new ResponseEntity<Student>(currentStudent, HttpStatus.OK);
	    }
	 
	  //------------------- Delete a Student --------------------------------------------------------
	     
	    @RequestMapping(value = "/student/{id}", method = RequestMethod.DELETE)
	    public ResponseEntity<Student> deleteStudent(@PathVariable("id") int id) {
	        System.out.println("Fetching & Deleting student with id " + id);
	 
	        Student student = studentService.findById(id);
	        if (student == null) {
	            System.out.println("Unable to delete. Student with id " + id + " not found");
	            return new ResponseEntity<Student>(HttpStatus.NOT_FOUND);
	        }
	 
	        studentService.deleteStudentById(id);
	        return new ResponseEntity<Student>(HttpStatus.NO_CONTENT);
	    }
	 
	     
	  //------------------- get the section --------------------------------------------------------    
		 
		 
	    @RequestMapping(value = "/clas/{cls}", method = RequestMethod.GET)
	    public ResponseEntity<List<String>> getSections(@PathVariable("cls") String cls) {
	        System.out.println("class " + cls);
	         
	       // Student currentStudent = studentService.findById(id);
	    /*     
	        if (currentStudent==null) {
	            System.out.println("Student with id " + id + " not found");
	            return new ResponseEntity<Student>(HttpStatus.NOT_FOUND);
	        }
	 
	        currentStudent.setStuName(student.getStuName());
	        currentStudent.setStuAddress(student.getStuAddress());
	        currentStudent.setStuEmail(student.getStuEmail());
	         
	        studentService.updateStudent(currentStudent);*/
	        
	        List<String> sections = new ArrayList<String>();
	        sections.add("Section A");
	        sections.add("Section B");
	        return new ResponseEntity<List<String>>(sections, HttpStatus.OK);
	    }
			
		 

}
