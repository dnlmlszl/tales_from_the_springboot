package com.lmdcodes.springboot.demo.mycoolapp.rest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FunRestController {

	// inject properties for: coach.name and team.name

	@Value("${coach.name}")
	private String coach_name;
	@Value("${team.name}")
	private String team_name;
	
	@GetMapping("/")
	public String sayHello() {
		return "Hello World!";
	}

	@GetMapping("/workout")
	public String getDailyWorkout() {
		return "Run a hard 5k!";
	}

	@GetMapping("/fortune")
	public String getDailyFortune() {
		return "Today's your lucky day.";
	}
	
	@GetMapping("/teaminfo")
	public String getTeamInfo() {
		return "Coach: " + coach_name + ", Team: " + team_name;
	}

}
