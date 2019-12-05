package com.HospitalManagementSystem.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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

	@RequestMapping(value = "/")
	public String homePage() {
		return "hospital";
	}
	
	@RequestMapping(value = "/firstpage")
	public String firstPage() {
		return "firstpage";
	}

	@RequestMapping(value = "/getpatientid")
	public String getPatientId() {
		return "patient";
	}
	
	@RequestMapping(value = "/physicianSearch")
	public String physicianSearch() {
		return "PhysicianSearch";
	}

	@RequestMapping(value = "/searchSymptoms")
	public String getSymptoms(@RequestParam("pid") int patientId, Model model) {
		System.out.println("pid:" + patientId);
		List<Diagnosis> diagnosis = this.hospitalManagementDaoInter
				.findByPatientId(patientId);
		model.addAttribute("diagnosis", diagnosis);
		System.out.println("List elements : " + diagnosis);
		return "DisplaySymptoms";
	}

	@RequestMapping(value="/displayHistory")
	public String getSymptoms(@RequestParam Map<Integer,String> requestParams, Model model){		
		Integer patientId=Integer.parseInt(requestParams.get("patientid"));
		String symptoms=requestParams.get("symptom");
		System.out.println("Diag Id:"+patientId+"\tsymptom:"+symptoms);
		List<Diagnosis> listDiagnosis=this.hospitalManagementDaoInter.findByPatientIdAndSymptoms(patientId, symptoms);
		model.addAttribute("listdiagnosis", listDiagnosis);
        System.out.println("List elements : "+listDiagnosis);          
		return "DisplayDiagnosis";
	}
}
