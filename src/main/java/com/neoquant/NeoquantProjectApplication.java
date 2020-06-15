package com.neoquant;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class NeoquantProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(NeoquantProjectApplication.class, args);

		/*
		 * SessionFactory sessionFactory = new
		 * Configuration().configure().buildSessionFactory(); Session session =
		 * sessionFactory.openSession();
		 * 
		 * session.getTransaction().commit(); session.close();
		 */
	}

}
