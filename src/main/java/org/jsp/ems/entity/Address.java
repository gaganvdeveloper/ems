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
public class Address {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long addressId;
	private int doorNo;
	private String streetAddress;
	private String addressLine2;
	private String city;
	private String state;
	private String country;
	private String postalCode;
	private String addressType; // Can be an enum   PERMANENT , PRESENT
	@ManyToOne
	private Employee employee;
}
