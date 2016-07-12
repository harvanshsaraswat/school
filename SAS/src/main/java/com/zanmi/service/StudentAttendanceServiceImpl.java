package com.zanmi.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zanmi.dao.StudentAttendanceDao;
import com.zanmi.model.StudentAttendance;

@Service("studentAttendanceService")
public class StudentAttendanceServiceImpl implements StudentAttendanceService {

	@Autowired
	StudentAttendanceDao studentAttendanceDao;

	@Override
	public List<StudentAttendance> getAllStudentsAttendaceByDate(Date date) {

		if (date != null) {
			return studentAttendanceDao.getAllStudentsAttendaceByDate(date);
		} else {
			return null;
		}

	}

	@Override
	public List<StudentAttendance> findAttendanceByStudentId(int stuId) {
		return studentAttendanceDao.findAttendanceByStudentId(stuId);

	}

	@Override
	public List<StudentAttendance> findAttendanceByEmployeeId(int empId) {
		return studentAttendanceDao.findAttendanceByEmployeeId(empId);
	}

	@Override
	public StudentAttendance findAttendanceByDateAndStudentId(Date date, int stuId) {
		return studentAttendanceDao.findAttendanceByDateAndStudentId(date, stuId);
	}

	@Override
	public void saveStudentAttendace(StudentAttendance studentAttendance) {

		if (studentAttendance != null) {
			studentAttendanceDao.saveStudentAttendace(studentAttendance);
		}

	}

	@Override
	public void updateStudentAttendace(StudentAttendance studentAttendance) {

		if (studentAttendance != null) {
			studentAttendanceDao.updateStudentAttendace(studentAttendance);
		}

	}

}
