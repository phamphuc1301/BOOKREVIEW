package com.fsoft.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.fsoft.entities.Trainer;
import com.fsoft.repositories.TrainerRepository;

public class TrainerServiceImpl implements TrainerService {

	@Autowired
	private TrainerRepository trainerRepository;

	public Iterable<Trainer> findAll() {
		return trainerRepository.findAll();
	}

	public Trainer save(Trainer trainer) {
		return trainerRepository.save(trainer);
	}

	public Trainer findById(Integer trainerId){
		return trainerRepository.findOne(trainerId);
	}

	@Override
	public int saveTrainer(String trainerName, String trainerAccount,
			String trainerEmail, String mobilePhone) {
		return trainerRepository.saveTrainer(trainerName, trainerAccount, trainerEmail, mobilePhone);
	}
}
