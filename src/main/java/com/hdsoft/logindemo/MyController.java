package com.hdsoft.logindemo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;

@Controller
public class MyController {
    @GetMapping("/")
    public String get(){
        return "login";
    }
    @PostMapping("/login")
    public String login(@ModelAttribute("login") Login login, BindingResult res, Model model){
        if(login.getUsername().equals("admin") && login.getPassword().equals("admin")){
            model.addAttribute("username",login.getUsername());
            model.addAttribute("password",login.getPassword());
            return "home";
        }
        return "login";
    }

    @GetMapping("/test")
    public String test(){
        return "test";
    }
}
