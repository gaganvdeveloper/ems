package org.jsp.ems.controller;

import javax.servlet.http.HttpServletRequest;

import org.jsp.ems.service.EducationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping
public class EducationController {
	
		@Autowired
		EducationService educationService;
	
	
	@GetMapping(value = "/addeducation")
	public ModelAndView addEducationPage(@RequestParam int id, ModelAndView mv) {
		return educationService.addEducationPage(id,mv);
	}
	
	@PostMapping(value = "/saveeducation")
	public ModelAndView saveEducation(@RequestParam int id ,HttpServletRequest req, ModelAndView mv) {
		return educationService.saveEducation(id, req, mv);
	}
	
	
	
}
