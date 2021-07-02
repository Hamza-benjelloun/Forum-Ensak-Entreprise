package com.bgkTeam.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bgkTeam.model.DAOSponsor;

@Repository
public interface SponsorDao extends CrudRepository<DAOSponsor, Integer> {
	
	DAOSponsor findByUsername(String username);
	
}