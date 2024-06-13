package org.jsp.ems.configuration;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = "org.jsp.ems")
public class EMSConfiguration {

	@Bean
	EntityManager entityManager() {
		return Persistence.createEntityManagerFactory("dev").createEntityManager();
	}

}
