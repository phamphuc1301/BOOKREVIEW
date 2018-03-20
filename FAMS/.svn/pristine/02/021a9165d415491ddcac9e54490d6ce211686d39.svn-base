package com.fsoft.entities;

import java.io.Serializable;

import javax.persistence.*;


/**
 * The persistent class for the Trainee database table.
 * 
 */
@Entity
@NamedQuery(name="Trainee.findAll", query="SELECT t FROM Trainee t")
public class Trainee implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="trn_id")
	private int trnId;

	@Column(name="account_id")
	private String accountId;

	@Column(name="mobile_phone")
	private String mobilePhone;

	@Column(name="trainee_email")
	private String traineeEmail;

	@Column(name="trn_name")
	private String trnName;
	
	@ManyToOne
	@JoinColumn(name = "team_id", insertable = false, updatable = false)
	private Team team;

	public Trainee() {
	}

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public int getTrnId() {
		return this.trnId;
	}

	public void setTrnId(int trnId) {
		this.trnId = trnId;
	}

	public String getAccountId() {
		return this.accountId;
	}

	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}

	public String getMobilePhone() {
		return this.mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getTraineeEmail() {
		return this.traineeEmail;
	}

	public void setTraineeEmail(String traineeEmail) {
		this.traineeEmail = traineeEmail;
	}

	public String getTrnName() {
		return this.trnName;
	}

	public void setTrnName(String trnName) {
		this.trnName = trnName;
	}

}