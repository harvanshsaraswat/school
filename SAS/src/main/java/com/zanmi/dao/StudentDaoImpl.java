package com.zanmi.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zanmi.model.Student;
import com.zanmi.model.StudentAttendance;

@Service("studentDao")
@Transactional
public class StudentDaoImpl extends AbstractDao<Integer, Student>  implements StudentDao{
	
	
	

@SuppressWarnings("unchecked")
	public List<Student> getAllStudents() {
	//	System.out.println("Student List:"+students);
		  Criteria criteria = createEntityCriteria();
		  criteria.addOrder(Order.desc("stuId"));
		  System.out.println(criteria);
	        return (List<Student>) criteria.list();
	}

	public void saveStudent(Student student) {
		 persist(student);
	}
	
	public Student findById(int id) {
		 return getByKey(id);
	}
	

public void updateStudent(Student student) {
	
	update(student);
}
	
	


@Override
public void deleteStudentById(int id) {	
	Student student=findById(id);
	delete(student);
	
}


@SuppressWarnings("unchecked")
@Override
public List<Student> getAllStudentsBasedOnClassAndSection(String clas, String sec) {
	
	
	System.out.println(" Student in DAO calss"+clas+"section"+sec);
	Criteria criteria = createEntityCriteria();
	
	Criterion stuClass = Restrictions.eq("stuClass", clas);
	Criterion stuSection = Restrictions.eq("stuSection",sec);	
	
	LogicalExpression andExp = Restrictions.and(stuClass, stuSection);
	criteria.add( andExp );
	criteria.addOrder(Order.desc("stuName"));
	return (List<Student>) criteria.list();
	
}

}
