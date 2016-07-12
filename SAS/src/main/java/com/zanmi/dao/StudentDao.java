package com.zanmi.dao;

import java.util.List;

import com.zanmi.model.Student;

public interface StudentDao {

List<Student> getAllStudents();
	
	void saveStudent(Student student);
	
	Student findById(int id);
	
	void updateStudent(Student student);
	
	void deleteStudentById(int id);

	List<Student> getAllStudentsBasedOnClassAndSection(String clas, String sec);
}
