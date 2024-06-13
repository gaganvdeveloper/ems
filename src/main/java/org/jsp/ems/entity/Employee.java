package org.jsp.ems.entity;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@Component
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int employeeId;
	private String firstName;
	private String lastName;
	@CreationTimestamp
	private LocalDate dateOfJoin;
	@UpdateTimestamp
	private LocalDateTime lastLogin;
	private String department;
	private double salary;
	private long contactNo;

	private String emailId;
	private String experience; // YES - NO
	private String activeStatus; // ACTIVE - INACTIVE
//	@OneToMany
//	List<Address> addresses;
	@OneToMany
	List<Education> educations;

}
