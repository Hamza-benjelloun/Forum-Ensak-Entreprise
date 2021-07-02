package com.bgkTeam.model;
import lombok.Data;

@Data
public class ParticipantDTO {
	private String username;
	private String password;
	private String nom;
	private String email;
	private String tel;
	private String cv;
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