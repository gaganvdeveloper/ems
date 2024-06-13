package org.jsp.ems.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.jsp.ems.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EmployeeDao {

	@Autowired
	EntityManager entityManager;

	public Employee login(String email, String password) {
		Query qry = entityManager.createQuery("SELECT e FROM Employee e WHERE e.email=?1 AND e.password=?2");
		qry.setParameter(1, email);
		qry.setParameter(2, password);
		List<Employee> emps = qry.getResultList();
		if (emps.size() > 0) {
			return emps.get(0);
		}
		return null;
	}

	public void saveEmployee(Employee employee) {
		EntityTransaction transaction = entityManager.getTransaction();
		transaction.begin();
		entityManager.persist(employee);
		transaction.commit();
	}

	public List<Employee> findAllActiveEmployees() {
		return entityManager.createQuery("SELECT e FROM Employee e where e.activeStatus='ACTIVE'").getResultList();
	}

	public Employee findEmployeeById(int id) {
		return entityManager.find(Employee.class, id);
	}

	public void deleteEmpoyee(int id) {
		Employee employee = findEmployeeById(id);
		employee.setActiveStatus("INACTIVE");
		EntityTransaction transaction = entityManager.getTransaction();
		transaction.begin();
		entityManager.merge(employee);
		transaction.commit();
	}

	public void updateEmployee(Employee employee) {
		EntityTransaction transaction = entityManager.getTransaction();
		transaction.begin();
		entityManager.merge(employee);
		transaction.commit();
	}

}
