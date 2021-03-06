package com.HospitalManagementSystem.dao;

import java.util.List;

import org.apache.tomcat.util.Diagnostics;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.HospitalManagementSystem.model.Diagnosis;

public interface HospitalManagementDaoInter extends
		CrudRepository<Diagnosis, Integer> {

	public List<Diagnosis> findByPatientId(int id);

	public List<Diagnosis> findByPatientIdAndSymptoms(int pid, String name);
}