package com.fsoft.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

/**
 * The persistent class for the Team database table.
 * 
 */
@Entity
@NamedQuery(name = "Team.findAll", query = "SELECT t FROM Team t")
public class Team implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "team_id")
	private int teamId;

	@Column(name = "end_date")
	private Date endDate;

	@Column(name = "start_date")
	private Date startDate;

	@Column(name = "team_code")
	private String teamCode;

	@Column(name = "team_name")
	private String teamName;

	@OneToMany(mappedBy = "team")
	private List<Trainee> trainees;

	public Team() {
	}

	public List<Trainee> getTrainees() {
		return trainees;
	}

	public void setTrainees(List<Trainee> trainees) {
		this.trainees = trainees;
	}

	/*
	 * getter, setter methods
	 */
	public int getTeamId() {
		return this.teamId;
	}

	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getTeamCode() {
		return this.teamCode;
	}

	public void setTeamCode(String teamCode) {
		this.teamCode = teamCode;
	}

	public String getTeamName() {
		return this.teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	
	public Trainee addTrainee(Trainee trainee) {
		getTrainees().add(trainee);
		trainee.setTeam(this);

		return trainee;
	}

	public Trainee removeCours(Trainee trainee) {
		getTrainees().remove(trainee);
		trainee.setTeam(null);

		return trainee;
	}

}