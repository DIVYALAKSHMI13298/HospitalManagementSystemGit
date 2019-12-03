package com.HospitalManagementSystem.controller;

import java.util.Iterator;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.HospitalManagementSystem.dao.HospitalManagementDaoImpl;
import com.HospitalManagementSystem.dao.HospitalManagementDaoInter;
import com.HospitalManagementSystem.model.Diagnosis;

@Controller
public class HospitalManagementSystemController {
	
	@Autowired
	private HospitalManagementDaoInter hospitalManagementDaoInter;
	
	@RequestMapping(value="/")
	public String homePage(){
		return "home";
	}
	
	@RequestMapping(value="/getpatientid")
	public String getPatientId(){
		return "patient";
	}
	
	@RequestMapping(value="/searchSymptoms")
	public String getSymptoms(@RequestParam ("pid")int patientId, Model model){
		System.out.println("pid:"+patientId);
		List<Diagnosis> listSymptoms=this.hospitalManagementDaoInter.getPatientSymptoms(patientId);
		
		Iterator iterator = listSymptoms.iterator(); 
		  
        System.out.println("Symptoms List : "); 
  
        while (iterator.hasNext()) 
            System.out.print(iterator.next() + " "); 
		
		model.addAttribute("symptomslist", listSymptoms);
		
		return "DisplaySymptoms";
	}
	
	/*@RequestMapping(value="/searchSymptoms")
	public String getSymptoms(@RequestParam ("pid")String symptoms, Model model){
		System.out.println("symptom:"+symptoms);
		Diagnosis diagnosis=this.hospitalManagementDaoInter.findBySymptoms(symptoms);
		model.addAttribute("diagnosis", diagnosis);
        System.out.println("List elements : "+diagnosis.getModeOfPayment()); 
  
		return "DisplaySymptoms";
	}*/
    
	/*@RequestMapping(value="/searchSymptoms")
	public String getSymptoms(@RequestParam ("pid")int patientId){
		System.out.println("pid:"+patientId);
		List<Diagnosis> listSymptoms=this.hospitalManagementDaoInter.findByDiagnosisId(patientId);
        ModelAndView modelAndView = new ModelAndView("DisplaySymptoms");
		modelAndView.addObject("symptoms", listSymptoms);

		return "DisplaySymptoms";
	}*/
	
    }
