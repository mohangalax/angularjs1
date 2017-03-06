package com.simple.mail.box.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {
    @RequestMapping("/")
    public ModelAndView init() {
        final ModelAndView model = new ModelAndView();
        model.setViewName("index");

        return model;
    }
}
