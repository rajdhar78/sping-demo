package com.example.spring_deploy_aws;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")   // optional, can also just keep @GetMapping("/")
public class HelloController {

    @GetMapping
    public String home() {
        return "Hello!!!!, Spring Deploy AWS is working!";
    }
}
