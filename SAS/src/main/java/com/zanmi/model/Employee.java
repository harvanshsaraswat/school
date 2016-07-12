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
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "EMPLOYEE")
public class Employee implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7379802264224258347L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "EMP_ID")
	private int empId;

	@Size(min = 2, max = 50)
	@Column(name = "EMP_REGS_NO", unique = true)
	private int empRegistrationNo;

	

	@Size(min = 3, max = 50)
	@Column(name = "EMP_NAME", nullable = false)
	private String empName;

	
	@Column(name = "EMP_BLOOD_GROUP")
	private String empBloodGroup;

	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "DATE_OF_BIRTH")
	@Temporal(TemporalType.DATE)
	private Date empDob;


	@Column(name = "EMP_GENDER")
	private String empGender;
	

	@Column(name = "EMP_DEPARTMENT")
	private String empDepartment;

	@Column(name = "EMP_LICENCE_NO")
	private String empLicenceNo;
	
	// @NotNull
		// @Size(min=10, max=10)
		@Column(name = "EMP_MOBILE")
		private int empMobile;

		// @NotNull
		// @Size(min=1, max=10)
		@Column(name = "EMP_ALTER_MOBILE")
		private int empAlterMobile;
		
		@Column(name = "EMP_EMAIL")
		private String empEmail;

		@Column(name = "EMP_NATIONALITY")		
		private String empnationality;

		@Column(name = "EMP_MOTHER_TOUNG")
		private String empMotherToung;

		
		@Column(name = "EMP_Salary")		
		private long empuSalary;

		@Column(name = "EMP_WORK_EXP")
		private String empWorkExp;

		@Column(name = "EMP_DESIGNATION")
		private String empDesignation;	
	
	// @NotNull
	@Column(name = "EMP_PER_ADDRESS")
	private String empPerAddress;

	// @NotNull
	@Column(name = "EMP_PER_PIN")
	private int empPerPin;

	@Column(name = "EMP_MAIL_ADDRESS")
	private String empMailAddress;

	// @NotNull
	@Column(name = "EMP_MAIL_PIN")
	private int empMailPin;

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public int getEmpRegistrationNo() {
		return empRegistrationNo;
	}

	public void setEmpRegistrationNo(int empRegistrationNo) {
		this.empRegistrationNo = empRegistrationNo;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpBloodGroup() {
		return empBloodGroup;
	}

	public void setEmpBloodGroup(String empBloodGroup) {
		this.empBloodGroup = empBloodGroup;
	}

	public Date getEmpDob() {
		return empDob;
	}

	public void setEmpDob(Date empDob) {
		this.empDob = empDob;
	}

	public String getEmpGender() {
		return empGender;
	}

	public void setEmpGender(String empGender) {
		this.empGender = empGender;
	}

	public String getEmpDepartment() {
		return empDepartment;
	}

	public void setEmpDepartment(String empDepartment) {
		this.empDepartment = empDepartment;
	}

	public String getEmpLicenceNo() {
		return empLicenceNo;
	}

	public void setEmpLicenceNo(String empLicenceNo) {
		this.empLicenceNo = empLicenceNo;
	}

	public int getEmpMobile() {
		return empMobile;
	}

	public void setEmpMobile(int empMobile) {
		this.empMobile = empMobile;
	}

	public int getEmpAlterMobile() {
		return empAlterMobile;
	}

	public void setEmpAlterMobile(int empAlterMobile) {
		this.empAlterMobile = empAlterMobile;
	}

	public String getEmpEmail() {
		return empEmail;
	}

	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}

	public String getEmpuNatinality() {
		return empnationality;
	}

	public void setEmpuNatinality(String empnationality) {
		this.empnationality = empnationality;
	}

	public String getEmpMotherToung() {
		return empMotherToung;
	}

	public void setEmpMotherToung(String empMotherToung) {
		this.empMotherToung = empMotherToung;
	}

	public long getEmpuSalary() {
		return empuSalary;
	}

	public void setEmpuSalary(long empuSalary) {
		this.empuSalary = empuSalary;
	}

	public String getEmpWorkExp() {
		return empWorkExp;
	}

	public void setEmpWorkExp(String empWorkExp) {
		this.empWorkExp = empWorkExp;
	}

	public String getEmpDesignation() {
		return empDesignation;
	}

	public void setEmpDesignation(String empDesignation) {
		this.empDesignation = empDesignation;
	}

	public String getEmpPerAddress() {
		return empPerAddress;
	}

	public void setEmpPerAddress(String empPerAddress) {
		this.empPerAddress = empPerAddress;
	}

	public int getEmpPerPin() {
		return empPerPin;
	}

	public void setEmpPerPin(int empPerPin) {
		this.empPerPin = empPerPin;
	}

	public String getEmpMailAddress() {
		return empMailAddress;
	}

	public void setEmpMailAddress(String empMailAddress) {
		this.empMailAddress = empMailAddress;
	}

	public int getEmpMailPin() {
		return empMailPin;
	}

	public void setEmpMailPin(int empMailPin) {
		this.empMailPin = empMailPin;
	}

	public Employee(int empId, int empRegistrationNo, String empName) {
		super();
		this.empId = empId;
		this.empRegistrationNo = empRegistrationNo;
		this.empName = empName;
	}

	public Employee() {
		this.empId = 0;
	}

	

	
}
