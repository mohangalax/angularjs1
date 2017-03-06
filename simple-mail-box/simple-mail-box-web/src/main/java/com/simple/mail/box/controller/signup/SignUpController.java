package com.simple.mail.box.controller.signup;

import java.util.Arrays;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.simple.mail.box.constant.ViewConstants;
import com.simple.mail.box.entity.LoginUser;

@Controller
@RequestMapping(value = "/signup", produces = MediaType.APPLICATION_JSON_VALUE)
public class SignUpController {

    @RequestMapping(method = RequestMethod.GET)
	public ModelAndView signup() {
		final ModelAndView model = new ModelAndView(ViewConstants.SIGNUP);
		return model;
	}
    
    @RequestMapping(value="/create", method = RequestMethod.POST)
    @ResponseBody
	public ResponseEntity<?> create(@RequestBody final LoginUser user) {
    	
    	final String uri = "http://localhost:1234/mailbox/signup/";
        
        final RestTemplate restTemplate = new RestTemplate();
         
        final HttpHeaders headers = new HttpHeaders();
        headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
        final HttpEntity<LoginUser> entity = new HttpEntity<LoginUser>(user, headers);
         
        final ResponseEntity<String> result = restTemplate.exchange(uri, HttpMethod.POST, entity, String.class);
        
		return result;
	}
}
