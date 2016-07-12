package com.zanmi.dao;

import java.util.Date;
import java.util.List;

import com.zanmi.model.StudentAttendance;

public interface StudentAttendanceDao {

	List<StudentAttendance> getAllStudentsAttendaceByDate(Date date);

	List<StudentAttendance> findAttendanceByStudentId(int id);

	List<StudentAttendance> findAttendanceByEmployeeId(int id);

	StudentAttendance findAttendanceByDateAndStudentId(Date date, int id);

	void saveStudentAttendace(StudentAttendance studentAttendance);

	void updateStudentAttendace(StudentAttendance studentAttendance);

}
