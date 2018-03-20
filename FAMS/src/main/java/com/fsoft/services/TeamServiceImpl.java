package com.fsoft.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fsoft.entities.Team;
import com.fsoft.repositories.TeamRepository;

@Service("teamService")
@Transactional
public class TeamServiceImpl implements TeamService {
	@Autowired
	private TeamRepository teamRepository;

	public Iterable<Team> findAll() {
		
		return teamRepository.findAll();
	}

	public Team save(Team team) {
		return teamRepository.save(team);
	}

	public void delete(Team team) {
		teamRepository.delete(team);

	}

}
