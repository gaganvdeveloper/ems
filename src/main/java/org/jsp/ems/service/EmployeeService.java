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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Service
@SessionAttributes(names = "{employee}")
public class EmployeeService {

	@Autowired
	EmployeeDao employeeDao;

	@Autowired
	EducationDao educationDao;

	@Autowired
	AddressDao addressDao;

	public ModelAndView login(String email, String password, ModelAndView mv) {
		Employee employee = employeeDao.login(email, password);
		if (employee != null) {
			mv.setViewName("home.jsp");
			mv.addObject("employee", employee);
			mv.addObject("msg", "Employee Login Successfull...");
		} else {
			mv.setViewName("index.jsp");
			mv.addObject("employee", null);
			mv.addObject("msg", "Invalid Credentials...");
		}
		return mv;
	}

	public ModelAndView saveEmployee(HttpServletRequest req, ModelAndView mv) {

		Employee employee = new Employee();
		employee.setFirstName(req.getParameter("firstName"));
		employee.setLastName(req.getParameter("lastName"));
		employee.setDepartment(req.getParameter("department"));
		employee.setSalary(Double.parseDouble(req.getParameter("salary").trim()));
		employee.setContactNo(Long.parseLong(req.getParameter("contactNo").trim()));
		employee.setEmailId(req.getParameter("emailId"));
		employee.setExperience(req.getParameter("experience"));
		employee.setActiveStatus(req.getParameter("activeStatus"));
		employeeDao.saveEmployee(employee);
		mv.setViewName("home.jsp");
		mv.addObject("msg", "Employee Registerd Successfully...");
		return findAllActiveEmployees(mv);
	}

	public ModelAndView findAllActiveEmployees(ModelAndView mv) {
		List<Employee> employees = employeeDao.findAllActiveEmployees();
		mv.addObject("employees", employees);
		mv.setViewName("home.jsp");
		return mv;
	}

	public ModelAndView deleteEmployee(int id, ModelAndView mv) {
		if (employeeDao.findEmployeeById(id) != null) {
			employeeDao.deleteEmpoyee(id);
			mv.setViewName("home.jsp");
			mv.addObject("msg", "Student Deleted Successfully...");
		} else {
			mv.setViewName("home.jsp");
			mv.addObject("msg", "Unable to Delete Employee... Invalid Employee Id");
		}
		return findAllActiveEmployees(mv);
	}

	public ModelAndView addEmployeePage(ModelAndView mv) {
		mv.addObject("employee", new Employee());
		mv.setViewName("create_employee.jsp");
		return mv;
	}

	public ModelAndView updateEmployeePage(int id, ModelAndView mv) {
		Employee employee = employeeDao.findEmployeeById(id);
		List<Education> educations = educationDao.findAllEducationsOfEmployee(id);
		List<Address> addresses = addressDao.findAllAddressOfEmployee(id);

		if (employee != null) {
			mv.addObject("employee", employee);
			mv.addObject("educations", educations);
			mv.addObject("addresses", addresses);
			mv.addObject("msg", "Update Employee");
			mv.setViewName("update_employee.jsp");
		} else {
			mv.setViewName("home.jsp");
			mv.addObject("msg", "Invalid Employee Id...");
		}
		return mv;
	}

	public ModelAndView updateEmployee(HttpServletRequest req, ModelAndView mv) {

		Employee employee = employeeDao.findEmployeeById(Integer.parseInt(req.getParameter("employeeId")));
		if (employee != null) {
			employee.setFirstName(req.getParameter("firstName"));
			employee.setLastName(req.getParameter("lastName"));
			employee.setDepartment(req.getParameter("department"));
			employee.setSalary(Double.parseDouble(req.getParameter("salary")));
			employee.setContactNo(Long.parseLong(req.getParameter("contactNo")));
			employee.setEmailId(req.getParameter("emailId"));
			employee.setExperience(req.getParameter("experience"));
			employee.setActiveStatus(req.getParameter("activeStatus"));
			employeeDao.updateEmployee(employee);
			mv.addObject("employee", employee);
			mv.addObject("msg", "Student Details Updated Successfully...");
			mv.setViewName("update_employee.jsp");
		} else {
			mv.addObject("msg", "Invalid Employee Id...");
		}
		return findAllActiveEmployees(mv);
	}

}
