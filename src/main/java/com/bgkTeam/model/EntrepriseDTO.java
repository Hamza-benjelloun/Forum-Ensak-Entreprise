package com.bgkTeam.model;

import lombok.Data;

@Data
public class EntrepriseDTO {
	private String username;
	private String password;
	private String raison;
	private String link;
	private String logo;
	private String photo;
	private String role;
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}