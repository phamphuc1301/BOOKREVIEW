package com.fsoft.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fsoft.model.Account;
import com.fsoft.services.AccountService;

@Controller
public class SigninController {
	@Autowired
	AccountService accountService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(@ModelAttribute("accountLogin") Account accountLogin,
			ModelMap modelMap, Principal principal) {
		String loggedInUserName = principal.getName();
		System.out.println("hello" + loggedInUserName);
		modelMap.addAttribute("userName", accountLogin.getUsername());
		return "home";
	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public String home(ModelMap modelMap,
			@ModelAttribute("login") Account accountLogin) {

		System.out.println("Inside " + accountLogin);
		Account account = accountService.checkAccount(accountLogin);// userService.validateUser(login);
		if (null != account) {

			modelMap.addAttribute("userName", account.getUsername());
			return "home";
		} else {
			modelMap.addAttribute("message", "Username or Password is wrong!!");
			return "login";
		}
	}

	@RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {
		model.addAttribute("error", "true");
		return "denied";
	}
}
