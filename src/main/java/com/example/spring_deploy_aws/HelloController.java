package com.example.spring_deploy_aws;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RestMapping("/demo")    
public class HelloController {

    @GetMapping("/data")
    public String home() {
        return "Hello, Spring Deploy AWS is working!";
    }

    @GetMapping("/data2")
    public String home() {
        return "Hello,Second update Spring Deploy AWS is working!";
    }
}
