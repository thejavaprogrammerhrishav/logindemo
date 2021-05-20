package com.hdsoft.logindemo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ListController {
    private List<String> list=new ArrayList<>();

    @GetMapping("/add")
    public String get(HttpSession session){
        session.setAttribute("list",list);
        return "mylist";
    }

    @PostMapping("/add")
    public String post(@ModelAttribute("val") String val, HttpSession session){
        if(val!=null){
            list.add(val);
            session.setAttribute("list",list);
        }
        return "redirect:/add";
    }
}
