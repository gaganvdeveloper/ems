package org.jsp.ems.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Education {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long educationId;
	private String qualification;
	private String universityName;
	private double percentage;
	private int completionYear;
	private String highestQualification; // YES - NO

	
	
	
	
	@ManyToOne
	private Employee employee;
}

//private String degree;
//private String major;
//private LocalDate startDate;
//private LocalDate endDate;
//private double grade;
//private boolean isHighestQualification;
