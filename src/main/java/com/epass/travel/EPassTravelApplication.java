package com.epass.travel;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ServletComponentScan
@SpringBootApplication
public class EPassTravelApplication {

	public static void main(String[] args) {
		SpringApplication.run(EPassTravelApplication.class, args);
	}

}
