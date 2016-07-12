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

import com.zanmi.model.Employee;
import com.zanmi.model.Student;
import com.zanmi.service.EmployeeService;
import com.zanmi.service.StudentService;

@RestController
public class EmployeeController {
	
	@Autowired
	EmployeeService employeeService;
	
	 @RequestMapping(value = "/employee/", method = RequestMethod.GET)
	    public ResponseEntity<List<Employee>> listAllEmployees() {
		 
		List<Employee> employees= employeeService.getAllEmployees();
		for(Employee employee:employees)
		System.out.println(employee.getEmpName());
		
		if(employees.isEmpty()){
			
			 return new ResponseEntity<List<Employee>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Employee>>(employees, HttpStatus.OK);
		
	 }
	
	    
	  //-------------------Create a Employee--------------------------------------------------------
	     
	    @RequestMapping(value = "/employee/", method = RequestMethod.POST)
	    public ResponseEntity<Void> createEmployee(@RequestBody Employee employee,    UriComponentsBuilder ucBuilder) {
	        System.out.println("Creating Student " + employee.getEmpName());
	 
	        
	 
	        employeeService.saveEmployee(employee);
	 
	        HttpHeaders headers = new HttpHeaders();
	        headers.setLocation(ucBuilder.path("/student/{id}").buildAndExpand(employee.getEmpId()).toUri());
	        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
	    }
	 
	    
	     
	    //------------------- Update a Employee --------------------------------------------------------
	     
	    @RequestMapping(value = "/employee/{id}", method = RequestMethod.PUT)
	    public ResponseEntity<Employee> updateEmployee(@PathVariable("id") int id, @RequestBody Employee employee) {
	        System.out.println("Updating Employee " + id);
	         
	        Employee currentEmployee = employeeService.findById(id);
	         
	        if (currentEmployee==null) {
	            System.out.println("Employee with id " + id + " not found");
	            return new ResponseEntity<Employee>(HttpStatus.NOT_FOUND);
	        }
	 
	        currentEmployee.setEmpName(employee.getEmpName());
	        currentEmployee.setEmpPerAddress(employee.getEmpPerAddress());
	        currentEmployee.setEmpEmail(employee.getEmpEmail());
	         
	        employeeService.updateEmployee(currentEmployee);
	        return new ResponseEntity<Employee>(currentEmployee, HttpStatus.OK);
	    }
	 
	  //------------------- Delete a Student --------------------------------------------------------
	     
	    @RequestMapping(value = "/employee/{id}", method = RequestMethod.DELETE)
	    public ResponseEntity<Employee> deleteStudent(@PathVariable("id") int id) {
	        System.out.println("Fetching & Deleting employee with id " + id);
	 
	        Employee employee = employeeService.findById(id);
	        if (employee == null) {
	            System.out.println("Unable to delete. employee with id " + id + " not found");
	            return new ResponseEntity<Employee>(HttpStatus.NOT_FOUND);
	        }
	 
	        employeeService.deleteEmployeeById(id);
	        return new ResponseEntity<Employee>(HttpStatus.NO_CONTENT);
	    }
	 
	     
	  
		 

}
