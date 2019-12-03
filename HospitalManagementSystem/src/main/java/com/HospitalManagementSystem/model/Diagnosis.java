package com.HospitalManagementSystem.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OrderColumn;
import javax.persistence.Table;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

@Entity
@Table(name = "Diagnosis")
public class Diagnosis implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@OrderColumn(name = "diagnosisId")
	private int diagnosisId;

	@NotNull(message = "Id cannot be null")
	@OrderColumn(name = "patientId")
	private int patientId;

	@NotNull(message = "Field cannot be null")
	@Column(name = "symptoms")
	private String symptoms;

	@NotNull(message = "Field cannot be null")
	@Column(name = "diagnosis")
	private String diagnosis;

	@NotNull(message = "Field cannot be null")
	@Column(name = "admin")
	private String admin;

	@NotNull(message = "Field cannot be null")
	@Past
	@Column(name = "dateOfDiagnosis")
	private Date dateOfDiagnosis;

	@NotNull(message = "Field cannot be null")
	@Column(name = "followUp")
	private String followUp;

	@NotNull(message = "Field cannot be null")
	@Future
	@Column(name = "dateOfFollowUp")
	private Date dateOfFollowUp;

	@Column(name = "billAmount")
	private float billAmount;

	@Column(name = "cardNo")
	private long cardNo;

	@Column(name = "modeOfPayment")
	private String modeOfPayment;

	public Diagnosis() {
		super();
	}

	public int getDiagnosisId() {
		return diagnosisId;
	}

	public void setDiagnosisId(int diagnosisId) {
		this.diagnosisId = diagnosisId;
	}

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	public String getSymptoms() {
		return symptoms;
	}

	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}

	public String getDiagnosis() {
		return diagnosis;
	}

	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	public Date getDateOfDiagnosis() {
		return dateOfDiagnosis;
	}

	public void setDateOfDiagnosis(Date dateOfDiagnosis) {
		this.dateOfDiagnosis = dateOfDiagnosis;
	}

	public String getFollowUp() {
		return followUp;
	}

	public void setFollowUp(String followUp) {
		this.followUp = followUp;
	}

	public Date getDateOfFollowUp() {
		return dateOfFollowUp;
	}

	public void setDateOfFollowUp(Date dateOfFollowUp) {
		this.dateOfFollowUp = dateOfFollowUp;
	}

	public float getBillAmount() {
		return billAmount;
	}

	public void setBillAmount(float billAmount) {
		this.billAmount = billAmount;
	}

	public long getCardNo() {
		return cardNo;
	}

	public void setCardNo(long cardNo) {
		this.cardNo = cardNo;
	}

	public String getModeOfPayment() {
		return modeOfPayment;
	}

	public void setModeOfPayment(String modeOfPayment) {
		this.modeOfPayment = modeOfPayment;
	}

	@Override
	public String toString() {
		return "Diagnosis [diagnosisId=" + diagnosisId + ", patientId="
				+ patientId + ", symptoms=" + symptoms + ", diagnosis="
				+ diagnosis + ", admin=" + admin + ", dateOfDiagnosis="
				+ dateOfDiagnosis + ", followUp=" + followUp
				+ ", dateOfFollowUp=" + dateOfFollowUp + ", billAmount="
				+ billAmount + ", cardNo=" + cardNo + ", modeOfPayment="
				+ modeOfPayment + "]";
	}

	

}
