package com.bgkTeam.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bgkTeam.model.DAOParticipant;

@Repository
public interface ParticipantDao extends CrudRepository<DAOParticipant, Integer> {
	
	DAOParticipant findByUsername(String username);
	
}