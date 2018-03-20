package com.fsoft.repositories;

import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.fsoft.entities.Trainer;

@Repository("trainerRepository")
public interface TrainerRepository extends CrudRepository<Trainer, Integer> {

	/*
	 * @Query("SELECT t.title FROM Todo t where t.id = :id") String
	 * findTitleById(@Param("id") Long id);
	 */
	@Procedure(name = "usp_AddTrainer")
	int saveTrainer(@Param("trainerName") String trainerName,
			@Param("trainerAccount") String trainerAccount,
			@Param("trainerEmail") String trainerEmail,
			@Param("mobilePhone") String mobilePhone);
	
}
