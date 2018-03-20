package com.fsoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AppController {
	
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contactPage(ModelMap model) {
		return "contact";
	}
	
	@RequestMapping(value = { "/singout" }, method = RequestMethod.GET)
	public String signOut(ModelMap model) {
		return "login";
	}
	
/*	@RequestMapping(value="/appLogin", method = RequestMethod.POST)
	public String signIn() {
	  System.out.println("Vao day");
	  return "home";
	}*/
}
