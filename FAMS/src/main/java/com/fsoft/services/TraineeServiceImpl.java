package com.fsoft.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fsoft.entities.Trainee;
import com.fsoft.repositories.TraineeRepository;
@Service("traineeService")
@Transactional
public class TraineeServiceImpl implements TraineeService {

	@Autowired
	private TraineeRepository traineeRepository;

	@Override
	public Iterable<Trainee> findAll() {
		return traineeRepository.findAll();
	}

	@Override
	public Trainee save(Trainee trainee) {
		return traineeRepository.save(trainee);
	}

	@Override
	public Trainee findById(Integer traineeId) {
	    
		return traineeRepository.findOne(traineeId);
	}

	
}
