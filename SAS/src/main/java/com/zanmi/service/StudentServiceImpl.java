package com.zanmi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zanmi.dao.StudentDao;
import com.zanmi.model.Student;

@Service("studentService")
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	StudentDao studentDao;

	public List<Student> getAllStudents() {
		
		return	studentDao.getAllStudents();
		
	}

	public void saveStudent(Student student) {
		studentDao.saveStudent(student);
		
	}

	public Student findById(int id) {
		
		return studentDao.findById(id);
	}

	public void updateStudent(Student student) {
		studentDao.updateStudent(student);
		
	}

	@Override
	public void deleteStudentById(int id) {
		studentDao.deleteStudentById(id);
		
	}

	@Override
	public List<Student> getAllStudentsBasedOnClassAndSection(String clas, String sec) {
	return	studentDao.getAllStudentsBasedOnClassAndSection(clas,sec);
	}
	
	



	

}
