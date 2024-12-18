package com.lmdcodes.springboot.demo.springcoredemo.config;

import com.lmdcodes.springboot.demo.springcoredemo.common.Coach;
import com.lmdcodes.springboot.demo.springcoredemo.common.SwimCoach;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SportConfig {

    // either works with or without the Bean id
    // @Bean
    @Bean("aquatic")
    public Coach swimCoach() {
        return new SwimCoach();
    }
}
