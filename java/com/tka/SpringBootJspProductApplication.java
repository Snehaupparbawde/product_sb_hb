package com.tka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.tka")
public class SpringBootJspProductApplication {

	public static void main(String[] args) {
		System.out.println("**WELCOME To PRODUCT MANGAEGEMENT**");
		SpringApplication.run(SpringBootJspProductApplication.class, args);
	}

}
