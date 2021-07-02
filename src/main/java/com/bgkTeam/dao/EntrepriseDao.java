package com.bgkTeam.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bgkTeam.model.DAOEntreprise;

@Repository
public interface EntrepriseDao extends CrudRepository<DAOEntreprise, Integer> {
	
	DAOEntreprise findByUsername(String username);
	
}