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
import javax.validation.constraints.Digits;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "STUDENT")
public class Student implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2944183406729515021L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "STU_ID")
	private int stuId;

	@Size(min = 2, max = 50)
	@Column(name = "ROLL_NO", unique = true)
	private int stuRollNo;

	@Column(name = "SR_NO", unique = true)
	private int stuSrNo;

	@Size(min = 3, max = 50)
	@Column(name = "NAME", nullable = false)
	private String stuName;

	@Column(name = "PROVINCE")
	private String stuProvince;

	@Column(name = "BLOOD_GROUP")
	private String stuBloodGroup;

	@Size(min = 3, max = 50)
	@Column(name = "FATHER_NAME")
	private String stuFatherName;

	@Digits(integer = 8, fraction = 2)
	@Column(name = "FATHER_INCOME")
	private long stuFatherIncome;

	@Column(name = "FATHER_OCCUPATION")
	private String stuFatherOccupation;

	@Size(min = 3, max = 50)
	@Column(name = "MOTHER_NAME")
	private String stuMotherName;

	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "DATE_OF_BIRTH")
	@Temporal(TemporalType.DATE)
	private Date stuDob;

	/*
	 * @Column(name = "DATE_OF_BIRTH") private String stuDob;
	 */

	@Column(name = "GENDER")
	private String stuGender;

	// @NotNull
	@Column(name = "PER_ADDRESS")
	private String stuPerAddress;

	// @NotNull
	@Column(name = "PER_PIN")
	private int stuPerPin;

	@Column(name = "MAIL_ADDRESS")
	private String stuMailAddress;

	// @NotNull
	@Column(name = "MAIL_PIN")
	private int stuMailPin;

	// @NotNull
	// @Size(min=10, max=10)
	@Column(name = "MOBILE")
	private int stuMobile;

	// @NotNull
	// @Size(min=1, max=10)
	@Column(name = "ALTER_MOBILE")
	private int stuAlterMobile;

	@Column(name = "EMAIL")
	private String stuEmail;

	@Column(name = "NATIONALITY")
	private String stuNatinality;

	@Column(name = "MOTHER_TOUNG")
	private String stuMotherToung;

	@Column(name = "STUDENT_CLASS")
	private String stuClass;

	@Column(name = "SECTION")
	private String stuSection;

	@Column(name = "WING")
	private String stuWing;

	@Column(name = "GUARDIAN")
	private String stuGuardian;

	@Column(name = "CATEGORY")
	private String stuCategory;

	@Column(name = "CAST")
	private String stuCast;

	@Column(name = "HOSTEL")
	private String stuHostel;
	
	@Column(name = "TRANPORT")
	private String stuTransport;

	@Column(name = "PREV_CLG_NAME")
	private String stuPrevClgName;

	@Column(name = "PREV_CLG_BOARD")
	private String stuPrvClgBoard;

	@Column(name = "PREV_CLG_ADDRESS")
	private String stuPrevClgAdd;

	@Column(name = "PREV_CLG_RESULT")
	private String stuPrevClgResult;

	@Column(name = "PREV_CLG_PERCENT")
	private String stuPrevClgPercent;

	@Column(name = "TC_RECV_STATUS")
	private String stuTcReceiveStatus;

	// @NotNull
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "JOINING_DATE")
	@Temporal(TemporalType.DATE)
	private Date stuTcReceiveDate;

	// @NotNull
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "ADDMISSION_DATE")
	@Temporal(TemporalType.DATE)
	private Date stuAddDate;

	@Column(name = "IMAGE")
	private String stuImage;
	
	
	
	public int getStuId() {
		return stuId;
	}

	public void setStuId(int stuId) {
		this.stuId = stuId;
	}

	public int getStuRollNo() {
		return stuRollNo;
	}

	public void setStuRollNo(int stuRollNo) {
		this.stuRollNo = stuRollNo;
	}

	public int getStuSrNo() {
		return stuSrNo;
	}

	public void setStuSrNo(int stuSrNo) {
		this.stuSrNo = stuSrNo;
	}

	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public String getStuProvince() {
		return stuProvince;
	}

	public void setStuProvince(String stuProvince) {
		this.stuProvince = stuProvince;
	}

	public String getStuBloodGroup() {
		return stuBloodGroup;
	}

	public void setStuBloodGroup(String stuBloodGroup) {
		this.stuBloodGroup = stuBloodGroup;
	}

	public String getStuFatherName() {
		return stuFatherName;
	}

	public void setStuFatherName(String stuFatherName) {
		this.stuFatherName = stuFatherName;
	}

	public long getStuFatherIncome() {
		return stuFatherIncome;
	}

	public void setStuFatherIncome(long stuFatherIncome) {
		this.stuFatherIncome = stuFatherIncome;
	}

	public String getStuFatherOccupation() {
		return stuFatherOccupation;
	}

	public void setStuFatherOccupation(String stuFatherOccupation) {
		this.stuFatherOccupation = stuFatherOccupation;
	}

	public String getStuMotherName() {
		return stuMotherName;
	}

	public void setStuMotherName(String stuMotherName) {
		this.stuMotherName = stuMotherName;
	}

	public Date getStuDob() {
		return stuDob;
	}

	public void setStuDob(Date stuDob) {
		this.stuDob = stuDob;
	}

	public String getStuGender() {
		return stuGender;
	}

	public void setStuGender(String stuGender) {
		this.stuGender = stuGender;
	}

	public String getStuPerAddress() {
		return stuPerAddress;
	}

	public void setStuPerAddress(String stuPerAddress) {
		this.stuPerAddress = stuPerAddress;
	}

	public int getStuPerPin() {
		return stuPerPin;
	}

	public void setStuPerPin(int stuPerPin) {
		this.stuPerPin = stuPerPin;
	}

	public String getStuMailAddress() {
		return stuMailAddress;
	}

	public void setStuMailAddress(String stuMailAddress) {
		this.stuMailAddress = stuMailAddress;
	}

	public int getStuMailPin() {
		return stuMailPin;
	}

	public void setStuMailPin(int stuMailPin) {
		this.stuMailPin = stuMailPin;
	}

	public int getStuMobile() {
		return stuMobile;
	}

	public void setStuMobile(int stuMobile) {
		this.stuMobile = stuMobile;
	}

	public int getStuAlterMobile() {
		return stuAlterMobile;
	}

	public void setStuAlterMobile(int stuAlterMobile) {
		this.stuAlterMobile = stuAlterMobile;
	}

	public String getStuEmail() {
		return stuEmail;
	}

	public void setStuEmail(String stuEmail) {
		this.stuEmail = stuEmail;
	}

	public String getStuNatinality() {
		return stuNatinality;
	}

	public void setStuNatinality(String stuNatinality) {
		this.stuNatinality = stuNatinality;
	}

	public String getStuMotherToung() {
		return stuMotherToung;
	}

	public void setStuMotherToung(String stuMotherToung) {
		this.stuMotherToung = stuMotherToung;
	}

	public String getStuClass() {
		return stuClass;
	}

	public void setStuClass(String stuClass) {
		this.stuClass = stuClass;
	}

	public String getStuSection() {
		return stuSection;
	}

	public void setStuSection(String stuSection) {
		this.stuSection = stuSection;
	}

	public String getStuWing() {
		return stuWing;
	}

	public void setStuWing(String stuWing) {
		this.stuWing = stuWing;
	}

	public String getStuGuardian() {
		return stuGuardian;
	}

	public void setStuGuardian(String stuGuardian) {
		this.stuGuardian = stuGuardian;
	}

	public String getStuCategory() {
		return stuCategory;
	}

	public void setStuCategory(String stuCategory) {
		this.stuCategory = stuCategory;
	}

	public String getStuCast() {
		return stuCast;
	}

	public void setStuCast(String stuCast) {
		this.stuCast = stuCast;
	}

	public String getStuHostel() {
		return stuHostel;
	}

	public void setStuHostel(String stuHostel) {
		this.stuHostel = stuHostel;
	}

	public String getStuTransport() {
		return stuTransport;
	}

	public void setStuTransport(String stuTransport) {
		this.stuTransport = stuTransport;
	}

	public String getStuPrevClgName() {
		return stuPrevClgName;
	}

	public void setStuPrevClgName(String stuPrevClgName) {
		this.stuPrevClgName = stuPrevClgName;
	}

	public String getStuPrvClgBoard() {
		return stuPrvClgBoard;
	}

	public void setStuPrvClgBoard(String stuPrvClgBoard) {
		this.stuPrvClgBoard = stuPrvClgBoard;
	}

	public String getStuPrevClgAdd() {
		return stuPrevClgAdd;
	}

	public void setStuPrevClgAdd(String stuPrevClgAdd) {
		this.stuPrevClgAdd = stuPrevClgAdd;
	}

	public String getStuPrevClgResult() {
		return stuPrevClgResult;
	}

	public void setStuPrevClgResult(String stuPrevClgResult) {
		this.stuPrevClgResult = stuPrevClgResult;
	}

	public String getStuPrevClgPercent() {
		return stuPrevClgPercent;
	}

	public void setStuPrevClgPercent(String stuPrevClgPercent) {
		this.stuPrevClgPercent = stuPrevClgPercent;
	}

	public String getStuTcReceiveStatus() {
		return stuTcReceiveStatus;
	}

	public void setStuTcReceiveStatus(String stuTcReceiveStatus) {
		this.stuTcReceiveStatus = stuTcReceiveStatus;
	}

	public Date getStuTcReceiveDate() {
		return stuTcReceiveDate;
	}

	public void setStuTcReceiveDate(Date stuTcReceiveDate) {
		this.stuTcReceiveDate = stuTcReceiveDate;
	}

	public Date getStuAddDate() {
		return stuAddDate;
	}

	public void setStuAddDate(Date stuAddDate) {
		this.stuAddDate = stuAddDate;
	}

	public String getStuImage() {
		return stuImage;
	}

	public void setStuImage(String stuImage) {
		this.stuImage = stuImage;
	}

	public Student(int stuId, String stuName, String stuEmail) {
		super();
		this.stuId = stuId;
		this.stuName = stuName;
		this.stuEmail = stuEmail;
	}

	Student() {
		this.stuId = 0;
	}

}
