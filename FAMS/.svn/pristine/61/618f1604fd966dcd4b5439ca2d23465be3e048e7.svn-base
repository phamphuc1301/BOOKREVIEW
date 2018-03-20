package com.fsoft.entities;

import java.io.Serializable;

import javax.persistence.*;

/**
 * The persistent class for the Course database table.
 * 
 */
@Entity
@NamedQuery(name = "Course.findAll", query = "SELECT c FROM Course c")
public class Course implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "course_id")
	private int courseId;

	@Column(name = "course_code")
	private String courseCode;

	@Column(name = "course_title")
	private String courseTitle;

	private String description;

	private int duration;

	@Column(name = "trainer_id")
	private int trainerId;

	@ManyToOne
	@JoinColumn(name = "trainer_id", insertable = false, updatable = false)
	private Trainer trainer;

	public Course() {
	}

	public Trainer getTrainer() {
		return trainer;
	}

	public void setTrainer(Trainer trainer) {
		this.trainer = trainer;
	}

	public int getCourseId() {
		return this.courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getCourseCode() {
		return this.courseCode;
	}

	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}

	public String getCourseTitle() {
		return this.courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getDuration() {
		return this.duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public int getTrainerId() {
		return this.trainerId;
	}

	public void setTrainerId(int trainerId) {
		this.trainerId = trainerId;
	}

}