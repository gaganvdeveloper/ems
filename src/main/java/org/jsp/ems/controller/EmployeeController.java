package org.jsp.ems.controller;

import javax.servlet.http.HttpServletRequest;

import org.jsp.ems.entity.Employee;
import org.jsp.ems.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;

	@PostMapping("/login")
	public ModelAndView employeeLogin(@RequestParam String email, @RequestParam String password, ModelAndView mv) {
		return employeeService.login(email, password, mv);
	}

	@GetMapping(value = "/addemployee")
	public ModelAndView addEmployeePage(ModelAndView mv) {
		return employeeService.addEmployeePage(mv);
	}

	@PostMapping(value = "/saveemployee")
	public ModelAndView saveEmployee(ModelAndView mv, HttpServletRequest req) {
		return employeeService.saveEmployee(req, mv);
	}

	@GetMapping(value = "/update")
	public ModelAndView updateEmployeePage(@RequestParam int id, ModelAndView mv) {
		return employeeService.updateEmployeePage(id, mv);
	}

	@PostMapping(value = "/updateemployee")
	public ModelAndView updateEmployee(HttpServletRequest req, ModelAndView mv) {
		return employeeService.updateEmployee(req,mv);
	}
	
	@GetMapping(value = "/delete")
	public ModelAndView deleteEmployee(@RequestParam int id, ModelAndView mv) {
		return employeeService.deleteEmployee(id, mv);
	}

	@GetMapping(value = "/allemployees")
	public ModelAndView allActiveEmployess(ModelAndView mv) {
		mv.addObject("msg","All Students...");
		return employeeService.findAllActiveEmployees(mv);
	}

}
