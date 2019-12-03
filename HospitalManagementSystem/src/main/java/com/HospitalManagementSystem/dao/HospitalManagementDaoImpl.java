package com.HospitalManagementSystem.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.HospitalManagementSystem.model.Diagnosis;

@Repository
public class HospitalManagementDaoImpl {
	
	/*@Override*/
	/*public List<Diagnosis> readSymptomsById(int patientId) {
		System.out.println("Inside Dao");
		Session session=this.sessionFactory.openSession();
		String hql="symptoms from Diagnosis where patientId=:id";
		List<Diagnosis> diagnosis=session.createQuery(hql).setInteger("id", patientId).list();
		Iterator iterator = diagnosis.iterator(); 
		  
        System.out.println("Symptoms List : "); 
  
        while (iterator.hasNext()) 
            System.out.print(iterator.next() + " "); 
        
		return diagnosis;
	}*/
}
