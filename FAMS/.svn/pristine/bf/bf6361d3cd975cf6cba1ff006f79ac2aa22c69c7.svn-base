package com.fsoft.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fsoft.entities.Team;
import com.fsoft.services.TeamService;

@Controller
public class TeamController {
	@Autowired
	private TeamService teamService;

	@RequestMapping(value = { "/saveTeam" }, method = RequestMethod.POST)
	public String saveTeam(@ModelAttribute("team") Team team, ModelMap modelMap) {
		Team result = teamService.save(team);
		if (result == null) {
			String message = "Add Fail!";
			modelMap.addAttribute("message", message);
		}
		return "redirect:/listTeam";
	}

	@RequestMapping(value = { "/addTeam" }, method = RequestMethod.GET)
	public String addTeamPage(Principal principal) {
		String loggedInUserName = principal.getName();

		System.out.println("User: "+ loggedInUserName);
		return "addTeam";
	}

	@RequestMapping("/admin")
	public String admin(Model model, Principal principal) {

		String loggedInUserName = principal.getName();
		model.addAttribute("user", loggedInUserName);
		model.addAttribute("name", "Spring Security Custom Login Demo");
		model.addAttribute("description", "Protected page !");
		return "admin";
	}

	@RequestMapping(value = { "/listTeam" }, method = RequestMethod.GET)
	public String listAllTeam(ModelMap model) {
		Iterable<Team> listOfTeam = teamService.findAll();
		model.addAttribute("listOfTeam", listOfTeam);
		return "teams";
	}
}
