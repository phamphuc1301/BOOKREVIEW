package com.fsoft.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;


/**
 * The persistent class for the Enroll database table.
 * 
 */
@Entity
@NamedQuery(name="Enroll.findAll", query="SELECT e FROM Enroll e")
public class Enroll implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="enroll_id")
	private int enrollId;

	@Column(name="course_end")
	private Date courseEnd;

	@Column(name="course_id")
	private int courseId;

	@Column(name="course_start")
	private Date courseStart;

	private double gpa;

	@Column(name="trn_id")
	private int trnId;

	public Enroll() {
	}

	public int getEnrollId() {
		return this.enrollId;
	}

	public void setEnrollId(int enrollId) {
		this.enrollId = enrollId;
	}

	public Date getCourseEnd() {
		return this.courseEnd;
	}

	public void setCourseEnd(Date courseEnd) {
		this.courseEnd = courseEnd;
	}

	public int getCourseId() {
		return this.courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public Date getCourseStart() {
		return this.courseStart;
	}

	public void setCourseStart(Date courseStart) {
		this.courseStart = courseStart;
	}

	public double getGpa() {
		return this.gpa;
	}

	public void setGpa(double gpa) {
		this.gpa = gpa;
	}

	public int getTrnId() {
		return this.trnId;
	}

	public void setTrnId(int trnId) {
		this.trnId = trnId;
	}

}