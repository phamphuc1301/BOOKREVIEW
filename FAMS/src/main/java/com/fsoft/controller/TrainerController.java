package com.fsoft.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fsoft.entities.Trainer;
import com.fsoft.services.TrainerService;

@Controller
public class TrainerController {
	@Autowired
	private TrainerService trainerService;

	@RequestMapping(value = "/listTrainer", method = RequestMethod.GET)
	public String listAllTrainer(ModelMap modelMap) {
		Iterable<Trainer> listOfTrainer = trainerService.findAll();
		modelMap.addAttribute("listOfTrainer", listOfTrainer);
		return "trainers";
	}

	@RequestMapping(value = "/addTrainer", method = RequestMethod.GET)
	public String addTrainerPage() {
		return "addTrainer";
	}

	@RequestMapping(value = "/saveTrainer", method = RequestMethod.POST)
	public String saveTrainer(@ModelAttribute("trainer") Trainer trainer,
			ModelMap modelMap) {
		int trainerId= trainerService.saveTrainer(trainer.getTrainerName(), trainer.getTrainerAccount(), trainer.getTrainerEmail(), trainer.getMobilePhone());
		String message = "";
		if (trainerId != 0) {
			message = "Add successful!";
		} else
			message = "Add fail!";

		modelMap.addAttribute("message", message);
		System.out.println("trainerId " + trainerId);
		modelMap.addAttribute("trainerId", trainerId);

		return "addTrainer";
	}

	/**
	 * 
	 * @param trainerId
	 * @return
	 */
	@RequestMapping(value = "/editTrainer", method = RequestMethod.GET)
	public String editTrainer(@RequestParam("id") String trainerId,
			ModelMap modelMap) {
		Integer id = new Integer(trainerId);
		if (id != 0) {
			Trainer trainer = trainerService.findById(id);
			modelMap.addAttribute("trainer", trainer);
			return "addTrainer";
		} else {
			return "error";
		}

	}

}
