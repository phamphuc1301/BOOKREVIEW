package com.fsoft.services;

import com.fsoft.entities.Team;

public interface TeamService {
	public Iterable<Team> findAll();
	
	public Team save(Team team);
	
	public void delete(Team team);
	
}
