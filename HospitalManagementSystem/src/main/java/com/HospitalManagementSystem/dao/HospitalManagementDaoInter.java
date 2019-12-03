package com.HospitalManagementSystem.dao;

import java.util.List;

import org.apache.tomcat.util.Diagnostics;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.HospitalManagementSystem.model.Diagnosis;

public interface HospitalManagementDaoInter extends CrudRepository<Diagnosis, Integer> {
		/*public Employee findByEmpId(long id);

		public Employee findByEmpFirstName(String name);
*/
		public List<Diagnosis> findByDiagnosisId(int id);
		
		@Query(value="select diagnosis_id from Diagnosis where patient_id =:pid", nativeQuery=true)
		public List<Diagnosis> getPatientSymptoms(@Param("pid") int patientId);
		
		public List<Diagnosis> findByPatientId(int id);
		
		public Diagnosis findBySymptoms(String name);
		
		//public Employee findByEmpIdAndEmpFirstName(long id,String name);
		
	}