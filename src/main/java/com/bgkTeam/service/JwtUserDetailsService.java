package com.bgkTeam.service;

import javax.security.sasl.AuthenticationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import com.bgkTeam.dao.*;
import com.bgkTeam.model.Admin;
import com.bgkTeam.model.DAOEntreprise;
import com.bgkTeam.model.DAOParticipant;
import com.bgkTeam.model.DAOSponsor;
import com.bgkTeam.model.EntrepriseDTO;
import com.bgkTeam.model.ParticipantDTO;
import com.bgkTeam.model.SponsorDTO;

@Service
public class JwtUserDetailsService implements UserDetailsService {
	
	@Autowired
	private EntrepriseDao entrepriseDao;
	
	@Autowired
	private SponsorDao sponsorDao;
	
	@Autowired
	private ParticipantDao ParticipantDao;
	
	@Autowired
	private AdminDao AdminDao;

	@Autowired
	private PasswordEncoder bcryptEncoder;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		DAOEntreprise entreprise = entrepriseDao.findByUsername(username);
		DAOSponsor sponsor = sponsorDao.findByUsername(username);
		DAOParticipant participant = ParticipantDao.findByUsername(username);
		Admin admin=AdminDao.findByUsername(username);
		if (entreprise == null) {
			if(sponsor==null) {
				if(participant==null) {
					if(admin==null) {
						throw new UsernameNotFoundException("User not found with username: " + username);
					}
					return new org.springframework.security.core.userdetails
							.User(admin.getUsername(),
						            admin.getPassword(),
						            admin.isEnabled(),
						            admin.isAccountNonExpired(),
						            admin.isCredentialsNonExpired(),
						            admin.isAccountNonLocked(),
						            admin.getAuthorities());
					
				}
				return new org.springframework.security.core.userdetails
					.User(participant.getUsername(),
				            participant.getPassword(),
				            participant.isEnabled(),
				            participant.isAccountNonExpired(),
				            participant.isCredentialsNonExpired(),
				            participant.isAccountNonLocked(),
				            participant.getAuthorities());
			}
			return new org.springframework.security.core.userdetails
					.User(sponsor.getUsername(),
				            sponsor.getPassword(),
				            sponsor.isEnabled(),
				            sponsor.isAccountNonExpired(),
				            sponsor.isCredentialsNonExpired(),
				            sponsor.isAccountNonLocked(),
				            sponsor.getAuthorities());
		}
		return new org.springframework.security.core.userdetails
					.User(entreprise.getUsername(),
				            entreprise.getPassword(),
				            entreprise.isEnabled(),
				            entreprise.isAccountNonExpired(),
				            entreprise.isCredentialsNonExpired(),
				            entreprise.isAccountNonLocked(),
				            entreprise.getAuthorities());
	}
	
	public DAOEntreprise saveEntreprise(EntrepriseDTO user) throws AuthenticationException {
		DAOParticipant checkParticipant = ParticipantDao.findByUsername(user.getUsername());
		DAOEntreprise checkEntreprise = entrepriseDao.findByUsername(user.getUsername());
        DAOSponsor checkSponsor = sponsorDao.findByUsername(user.getUsername());
		if(checkParticipant!=null || checkEntreprise!=null || checkSponsor!=null ) {
			throw new AuthenticationException("Username already exist :"+user.getUsername());
		}
		else {
			DAOEntreprise newUser = new DAOEntreprise();
			newUser.setUsername(user.getUsername());
			newUser.setPassword(bcryptEncoder.encode(user.getPassword()));
			newUser.setRaison(user.getRaison());
			newUser.setLink(user.getLink());
			newUser.setLogo(user.getLogo());
			newUser.setPhoto(user.getPhoto());
			newUser.setRole("ROLE_ENTREPRISE");
			return entrepriseDao.save(newUser);
		}
	}
	
	public DAOSponsor saveSponsor(SponsorDTO user) throws AuthenticationException {
		DAOParticipant checkParticipant = ParticipantDao.findByUsername(user.getUsername());
		DAOEntreprise checkEntreprise = entrepriseDao.findByUsername(user.getUsername());
        DAOSponsor checkSponsor = sponsorDao.findByUsername(user.getUsername());
		if(checkParticipant!=null || checkEntreprise!=null || checkSponsor!=null ) {
			throw new AuthenticationException("Username already exist :"+user.getUsername());
		}
		else {
			DAOSponsor newUser = new DAOSponsor();
			newUser.setUsername(user.getUsername());
			newUser.setPassword(bcryptEncoder.encode(user.getPassword()));
			newUser.setRaison(user.getRaison());
			newUser.setLink(user.getLink());
			newUser.setLogo(user.getLogo());
			newUser.setPhoto(user.getPhoto());
			newUser.setRole("ROLE_SPONSOR");
			return sponsorDao.save(newUser);
		}
	}
	public DAOParticipant saveParticipant(ParticipantDTO user) throws AuthenticationException {
		DAOParticipant checkParticipant = ParticipantDao.findByUsername(user.getUsername());
		DAOEntreprise checkEntreprise = entrepriseDao.findByUsername(user.getUsername());
        DAOSponsor checkSponsor = sponsorDao.findByUsername(user.getUsername());
		if(checkParticipant!=null || checkEntreprise!=null || checkSponsor!=null ) {
			throw new AuthenticationException("Username already exist :"+user.getUsername());
		}
		else {
			DAOParticipant newUser = new DAOParticipant();
			newUser.setUsername(user.getUsername());
			newUser.setPassword(bcryptEncoder.encode(user.getPassword()));
			newUser.setNom(user.getNom());
			newUser.setEmail(user.getEmail());
			newUser.setTel(user.getTel());
			newUser.setCv(user.getCv());
			newUser.setRole("ROLE_PARTICIPANT");
			return ParticipantDao.save(newUser);
		}
	}
	
	public Admin saveAdmin(Admin user) throws AuthenticationException {
			Admin admin=new Admin(69,"admin", bcryptEncoder.encode("admin2021"),"ROLE_ADMIN");
			return AdminDao.save(admin);
	}
	
}