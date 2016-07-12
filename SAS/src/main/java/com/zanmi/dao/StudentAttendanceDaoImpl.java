package com.zanmi.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zanmi.model.StudentAttendance;

@Service("studentAttendanceDao")
@Transactional
public class StudentAttendanceDaoImpl extends AbstractDao<Integer, StudentAttendance> implements StudentAttendanceDao {

	
	@Override
	public void saveStudentAttendace(StudentAttendance studentAttendance) {
		persist(studentAttendance);
	}

	@Override
	public void updateStudentAttendace(StudentAttendance studentAttendance) {
		update(studentAttendance);

	}

	@Override
	@SuppressWarnings("unchecked")
	public List<StudentAttendance> getAllStudentsAttendaceByDate(Date date) {
		
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("attendanceDate", date));
		criteria.addOrder(Order.desc("stuAttendaceId"));
		
		return (List<StudentAttendance>) criteria.list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<StudentAttendance> findAttendanceByStudentId(int stuId) {
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("stuId", stuId));
		criteria.addOrder(Order.desc("stuAttendaceId"));
		
		return (List<StudentAttendance>) criteria.list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<StudentAttendance> findAttendanceByEmployeeId(int empId) {
		
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("empId", empId));
		criteria.addOrder(Order.desc("stuAttendaceId"));
		
		return (List<StudentAttendance>) criteria.list();
	}

	@Override
	public StudentAttendance findAttendanceByDateAndStudentId(Date date, int stuId) {
		Criteria criteria = createEntityCriteria();
		
		Criterion attendanceDate = Restrictions.eq("attendanceDate", date);
		Criterion studentId = Restrictions.eq("stuId",stuId);	
		
		LogicalExpression andExp = Restrictions.and(attendanceDate, studentId);
		criteria.add( andExp );
		criteria.addOrder(Order.desc("stuAttendaceId"));
		
		return (StudentAttendance) criteria.uniqueResult();
	}

	

}
