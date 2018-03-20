package com.fsoft.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.fsoft.entities.Team;

@Repository("teamRepository")
public interface TeamRepository extends CrudRepository<Team, String> {

}
