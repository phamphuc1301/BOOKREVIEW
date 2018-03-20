package com.fsoft.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the Trainer database table.
 * 
 */
@Entity
@NamedQuery(name="Trainer.findAll", query="SELECT t FROM Trainer t")
public class Trainer implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="trainer_id")
	private int trainerId;

	@Column(name="external_email")
	private String externalEmail;

	@Column(name="mobile_phone")
	private String mobilePhone;

	private String subjects;

	@Column(name="trainer_account")
	private String trainerAccount;

	@Column(name="trainer_email")
	private String trainerEmail;

	@Column(name="trainer_name")
	private String trainerName;

	//bi-directional many-to-one association to Schedule
	@OneToMany(mappedBy="trainer", fetch=FetchType.EAGER)
	private List<Schedule> schedules;

	public Trainer() {
	}

	public int getTrainerId() {
		return this.trainerId;
	}

	public void setTrainerId(int trainerId) {
		this.trainerId = trainerId;
	}

	public String getExternalEmail() {
		return this.externalEmail;
	}

	public void setExternalEmail(String externalEmail) {
		this.externalEmail = externalEmail;
	}

	public String getMobilePhone() {
		return this.mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getSubjects() {
		return this.subjects;
	}

	public void setSubjects(String subjects) {
		this.subjects = subjects;
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

	public List<Schedule> getSchedules() {
		return this.schedules;
	}

	public void setSchedules(List<Schedule> schedules) {
		this.schedules = schedules;
	}

	public Schedule addSchedule(Schedule schedule) {
		getSchedules().add(schedule);
		schedule.setTrainer(this);

		return schedule;
	}

	public Schedule removeSchedule(Schedule schedule) {
		getSchedules().remove(schedule);
		schedule.setTrainer(null);

		return schedule;
	}

}