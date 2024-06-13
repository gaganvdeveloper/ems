package org.jsp.ems.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jsp.ems.dao.AddressDao;
import org.jsp.ems.dao.EducationDao;
import org.jsp.ems.dao.EmployeeDao;
import org.jsp.ems.entity.Address;
import org.jsp.ems.entity.Education;
import org.jsp.ems.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class EducationService {

	@Autowired
	EmployeeDao employeeDao;

	@Autowired
	AddressDao addressDao;

	@Autowired
	EducationDao educationDao;

	public ModelAndView addEducationPage(int id, ModelAndView mv) {
		mv.addObject("id", id);
		mv.setViewName("create_education.jsp");
		return mv;
	}

	public ModelAndView saveEducation(int id, HttpServletRequest req, ModelAndView mv) {
		Employee employee = employeeDao.findEmployeeById(id);
		Education education = new Education();
		education.setQualification(req.getParameter("qualification"));
		education.setUniversityName(req.getParameter("universityName"));
		education.setPercentage(Double.parseDouble(req.getParameter("percentage").trim()));
		education.setCompletionYear(Integer.parseInt(req.getParameter("completionYear").trim()));
		education.setHighestQualification(req.getParameter("highestQualification"));
		education.setEmployee(employee);
		educationDao.saveEducation(education);
		List<Education> educations  = educationDao.findAllEducationsOfEmployee(id);
		employee.setEducations(educations);
		employeeDao.updateEmployee(employee);
		return findAllEducationsOfEmployee(id, mv);
	}

	public ModelAndView findAllEducationsOfEmployee(int id, ModelAndView mv) {
		List<Education> educations = educationDao.findAllEducationsOfEmployee(id);
		List<Address> addresses = addressDao.findAllAddressOfEmployee(id);
		mv.addObject("employee", employeeDao.findEmployeeById(id));
		mv.addObject("educations", educations);
		mv.addObject("addresses", addresses);
		mv.setViewName("update_employee.jsp");
		return mv;
	}

}
