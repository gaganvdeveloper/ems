package org.jsp.ems.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.jsp.ems.entity.Education;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EducationDao {

	@Autowired
	EntityManager entityManager;

	public void saveEducation(Education education) {
		EntityTransaction transaction = entityManager.getTransaction();
		transaction.begin();
		entityManager.persist(education);
		transaction.commit();
	}

	public List<Education> findAllEducationsOfEmployee(int id) {
		Query qry = entityManager.createQuery("SELECT e FROM Education e WHERE e.employee.employeeId=?1");
		qry.setParameter(1, id);
		return qry.getResultList();
	}

}
