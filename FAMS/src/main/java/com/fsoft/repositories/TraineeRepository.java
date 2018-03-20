package com.fsoft.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.fsoft.entities.Trainee;

@Repository("traineeRepository")
public interface TraineeRepository extends CrudRepository<Trainee, Integer> {

	/*
	 * @Query("SELECT t.title FROM Todo t where t.id = :id") String
	 * findTitleById(@Param("id") Long id);
	 */
}
