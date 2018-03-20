package com.fsoft.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fsoft.entities.Team;
import com.fsoft.entities.Trainer;
import com.fsoft.services.TeamService;
import com.fsoft.services.TraineeService;

@Controller
public class TraineeController {
	@Autowired
	private TeamService teamService;
	@Autowired
	private TraineeService traineeService;

	@RequestMapping(value = "/addTrainee", method = RequestMethod.GET)
	public String addTrainerPage(ModelMap modelMap) {
		Iterable<Team> listOfTeam = teamService.findAll();
		modelMap.addAttribute("listOfTeam", listOfTeam);
		return "addTrainee";
	}

	/**
	 * 
	 * @param trainer
	 * @param team
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/saveTrainee", method = RequestMethod.POST)
	public String saveTrainer(@ModelAttribute("trainer") Trainer trainer, @RequestParam String team,
			ModelMap modelMap) {
		System.out.println(team.toString());
		
		/*Trainer trainerData = trainerService.save(trainer);
		String message = "";
		if (trainerData != null) {
			message = "Add successful!";
		} else
			message = "Add fail!";

		modelMap.addAttribute("message", message);*/

		return "addTrainer";
	}
}
