package com.zanmi.service;

import java.util.List;

import com.zanmi.model.Employee;

public interface EmployeeService {
	
	List<Employee> getAllEmployees();
	
	void saveEmployee(Employee employee);
	
	Employee findById(int id);
	
	void updateEmployee(Employee employee);
	
	void deleteEmployeeById(int id);

}
