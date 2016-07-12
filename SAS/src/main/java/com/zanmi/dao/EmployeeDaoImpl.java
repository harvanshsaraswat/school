package com.zanmi.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zanmi.model.Employee;

@Service("employeeDao")
@Transactional
public class EmployeeDaoImpl extends AbstractDao<Integer, Employee>  implements EmployeeDao{
	
	
	

@SuppressWarnings("unchecked")
	public List<Employee> getAllEmployees() {
	//	System.out.println("Student List:"+students);
		  Criteria criteria = createEntityCriteria();
		  System.out.println(criteria);
	        return (List<Employee>) criteria.list();
	}

	public void saveEmployee(Employee employee) {
		 persist(employee);
	}
	
	public Employee findById(int id) {
		 return getByKey(id);
	}
	

public void updateEmployee(Employee employee) {
	
	update(employee);
}
	
	


@Override
public void deleteEmployeeById(int id) {	
	Employee employee=findById(id);
	delete(employee);
	
}

}
