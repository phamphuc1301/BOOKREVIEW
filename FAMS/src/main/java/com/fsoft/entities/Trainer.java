package com.fsoft.entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;

/**
 * The persistent class for the Trainer database table.
 * 
 */
@Entity
@NamedQueries({ @NamedQuery(name = "Trainer.findAll", query = "SELECT t FROM Trainer t") })
@Table(name = "Trainer")
public class Trainer implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "trainer_id")
	private Integer trainerId;

	@Column(name = "mobile_phone")
	private String mobilePhone;

	@Column(name = "trainer_account")
	private String trainerAccount;

	@Column(name = "trainer_email")
	private String trainerEmail;

	@Column(name = "trainer_name")
	private String trainerName;
	
	@OneToMany(mappedBy="trainer")
	private List<Course> courses;

	// getter-setter methods
	public Trainer() {

	}
	
	public List<Course> getCourses() {
		return this.courses;
	}

	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}

	public Integer getTrainerId() {
		return this.trainerId;
	}

	public void setTrainerId(Integer trainerId) {
		this.trainerId = trainerId;
	}

	public String getMobilePhone() {
		return this.mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getTrainerAccount() {
		return this.trainerAccount;
	}

	public void setTrainerAccount(String trainerAccount) {
		this.trainerAccount = trainerAccount;
	}

	public String getTrainerEmail() {
		return this.trainerEmail;
	}

	public void setTrainerEmail(String trainerEmail) {
		this.trainerEmail = trainerEmail;
	}

	public String getTrainerName() {
		return this.trainerName;
	}

	public void setTrainerName(String trainerName) {
		this.trainerName = trainerName;
	}
	public Course addCours(Course cours) {
		getCourses().add(cours);
		cours.setTrainer(this);

		return cours;
	}

	public Course removeCours(Course cours) {
		getCourses().remove(cours);
		cours.setTrainer(null);

		return cours;
	}

}