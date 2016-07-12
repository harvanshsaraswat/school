package com.zanmi.service;

import java.util.List;

import com.zanmi.model.Student;

public interface StudentService {
	
	List<Student> getAllStudents();
	
	void saveStudent(Student student);
	
	Student findById(int id);
	
	void updateStudent(Student student);
	
	void deleteStudentById(int id);

	List<Student> getAllStudentsBasedOnClassAndSection(String clas, String sec);

}
