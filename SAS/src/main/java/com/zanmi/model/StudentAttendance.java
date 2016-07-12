package com.zanmi.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name = "STUDENT_ATTENDANCE")
public class StudentAttendance implements Serializable{
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 5018380777329479735L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "STU_ATTANDENCE_ID")
	private int stuAttendaceId;
	
	@Column(name = "STU_ID")
	private int stuId;
	
	@Column(name = "EMP_ID")
	private int empId;
	
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "ATTENDANCE_DATE")
	@Temporal(TemporalType.DATE)
	private Date attendanceDate;
	
	@Column(name = "STUDANCE_STATUS")
	private String stuStatus;

	public int getStuAttendaceId() {
		return stuAttendaceId;
	}

	public void setStuAttendaceId(int stuAttendaceId) {
		this.stuAttendaceId = stuAttendaceId;
	}

	public int getStuId() {
		return stuId;
	}

	public void setStuId(int stuId) {
		this.stuId = stuId;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public Date getAttendanceDate() {
		return attendanceDate;
	}

	public void setAttendanceDate(Date attendanceDate) {
		this.attendanceDate = attendanceDate;
	}

	public String getStuStatus() {
		return stuStatus;
	}

	public void setStuStatus(String stuStatus) {
		this.stuStatus = stuStatus;
	}

	
	
	public StudentAttendance() {
		super();
		this.stuId = 0;
	}
	
	

}
