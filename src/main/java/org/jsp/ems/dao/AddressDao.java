package org.jsp.ems.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.jsp.ems.entity.Address;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AddressDao {

	@Autowired
	EntityManager entityManager;

	public void saveAddress(Address address) {
		EntityTransaction transaction = entityManager.getTransaction();
		transaction.begin();
		entityManager.persist(address);
		transaction.commit();
	}

	public List<Address> findAllAddressOfEmployee(int id) {
		Query qry = entityManager.createQuery("SELECT a FROM Address a WHERE a.employee.employeeId=?1");
		qry.setParameter(1, id);
		return qry.getResultList();
	}

}
