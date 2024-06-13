package org.jsp.ems.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jsp.ems.dao.AddressDao;
import org.jsp.ems.dao.EducationDao;
import org.jsp.ems.dao.EmployeeDao;
import org.jsp.ems.entity.Address;
import org.jsp.ems.entity.Education;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class AddressService {

	@Autowired
	AddressDao addressDao;
	
	@Autowired
	EmployeeDao employeeDao;
	
	@Autowired
	EducationDao educationDao;

	public ModelAndView addAddressPage(int id, ModelAndView mv) {
		mv.addObject("id", id);
		mv.setViewName("create_address.jsp");
		return mv;
	}

	public ModelAndView saveAddress(int id, HttpServletRequest req, ModelAndView mv) {
		Address address = new Address();
		address.setDoorNo(Integer.parseInt(req.getParameter("doorNo")));
		address.setStreetAddress(req.getParameter("streetAddress"));
		address.setAddressLine2(req.getParameter("addressLine2"));
		address.setCity(req.getParameter("city"));
		address.setState(req.getParameter("state"));
		address.setCountry(req.getParameter("country"));
		address.setPostalCode(req.getParameter("postalCode"));
		address.setAddressType(req.getParameter("addressType"));
		address.setEmployee(employeeDao.findEmployeeById(id));
		addressDao.saveAddress(address);
		return findAllAddressOfEmployee(id, mv);
	}

	public ModelAndView findAllAddressOfEmployee(int id, ModelAndView mv) {
		List<Education> educations = educationDao.findAllEducationsOfEmployee(id);
		List<Address> addresses = addressDao.findAllAddressOfEmployee(id);
		mv.addObject("employee", employeeDao.findEmployeeById(id));
		mv.addObject("educations", educations);
		mv.addObject("addresses", addresses);
		mv.setViewName("update_employee.jsp");
		return mv;
	}
	
	
}
