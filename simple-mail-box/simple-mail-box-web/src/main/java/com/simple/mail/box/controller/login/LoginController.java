package com.simple.mail.box.controller.login;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.simple.mail.box.constant.ViewConstants;

@Controller
@RequestMapping(value = "/login", produces = MediaType.APPLICATION_JSON_VALUE)
public class LoginController {

    @RequestMapping(method = RequestMethod.GET)
	public ModelAndView login() {
		final ModelAndView model = new ModelAndView(ViewConstants.LOGIN);
		return model;
	}
    
}
