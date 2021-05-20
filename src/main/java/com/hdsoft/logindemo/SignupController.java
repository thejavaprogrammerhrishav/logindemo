package com.hdsoft.logindemo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.websocket.Session;

@Controller
public class SignupController {
    @GetMapping("/signup")
    public String signup(){
        return "signup";
    }

    @PostMapping("/signup")
    public String registerUser(@ModelAttribute("user") @Valid User user, BindingResult result, Model model, HttpSession session){
        if(result.hasErrors()){
            FieldError fieldError = result.getFieldErrors().get(0);
            String defaultMessage = fieldError.getDefaultMessage();
            session.setAttribute("error",defaultMessage);
            return "signup";
        }
        model.addAttribute("username",user.getUsername());
        model.addAttribute("password",user.getPassword());
        return "home";
    }
}
