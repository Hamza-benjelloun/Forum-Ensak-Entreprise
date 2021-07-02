package com.bgkTeam.dao;

import org.springframework.data.repository.CrudRepository;

import com.bgkTeam.model.Admin;

public interface AdminDao extends CrudRepository<Admin, Integer>{
	Admin findByUsername(String username);
}
