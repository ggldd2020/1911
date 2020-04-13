package com.st;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.st.dao")
public class Mode16Application {

	public static void main(String[] args) {
		SpringApplication.run(Mode16Application.class, args);
	}

}
