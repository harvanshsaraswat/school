package com.zanmi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zanmi.dao.EmployeeDao;
import com.zanmi.model.Employee;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	EmployeeDao employeeDao;

	public List<Employee> getAllEmployees() {
		
		return	employeeDao.getAllEmployees();
		
	}

	public void saveEmployee(Employee employee) {
		employeeDao.saveEmployee(employee);
		
	}

	public Employee findById(int id) {
		
		return employeeDao.findById(id);
	}

	public void updateEmployee(Employee employee) {
		employeeDao.updateEmployee(employee);
		
	}

	@Override
	public void deleteEmployeeById(int id) {
		employeeDao.deleteEmployeeById(id);
		
	}

	
	
	



	

}
