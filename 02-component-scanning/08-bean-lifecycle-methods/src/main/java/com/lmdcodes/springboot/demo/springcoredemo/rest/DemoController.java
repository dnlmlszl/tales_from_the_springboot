package com.lmdcodes.springboot.demo.springcoredemo.rest;

import com.lmdcodes.springboot.demo.springcoredemo.common.Coach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

    // define private field for the dependency
    private Coach myCoach;

    @Autowired
    public DemoController(@Qualifier("cricketCoach") Coach theCoach) {
        System.out.println("In costructor: " + getClass().getSimpleName());
        myCoach = theCoach;

    }

    @GetMapping("/dailyworkout")
    public String getDailyWorkout() {
        return myCoach.getDailyWorkout();
    }

}
// Singleton --> Comparing beans: myCoach == anotherCoach, true
// Prototype --> Comparing beans: myCoach == anotherCoach, false