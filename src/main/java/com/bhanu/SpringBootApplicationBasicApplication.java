package com.bhanu;

import javax.sql.DataSource;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootApplication
public class SpringBootApplicationBasicApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootApplicationBasicApplication.class, args);

	}

	@Bean
	BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	JdbcTemplate template(DataSource dataSource) {
		return new JdbcTemplate(dataSource);
	}
}
