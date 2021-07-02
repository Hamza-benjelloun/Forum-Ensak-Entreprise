package com.bgkTeam.controller;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bgkTeam.config.JwtTokenUtil;
import com.bgkTeam.dao.AdminDao;
import com.bgkTeam.dao.EntrepriseDao;
import com.bgkTeam.dao.ParticipantDao;
import com.bgkTeam.dao.SponsorDao;
import com.bgkTeam.model.Admin;
import com.bgkTeam.model.DAOEntreprise;
import com.bgkTeam.model.DAOParticipant;
import com.bgkTeam.model.DAOSponsor;
import com.bgkTeam.model.EntrepriseDTO;
import com.bgkTeam.model.JwtRequest;
import com.bgkTeam.model.JwtResponse;
import com.bgkTeam.model.ParticipantDTO;
import com.bgkTeam.model.SponsorDTO;
import com.bgkTeam.service.JwtUserDetailsService;

@Controller
@CrossOrigin
public class JwtAuthenticationController {

	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Autowired
	private EntrepriseDao daoEntreprise;
	
	@Autowired
	private ParticipantDao daoParticipant;
	
	@Autowired
	private SponsorDao daoSponsor;
	
	@Autowired
	private AdminDao daoAdmin;
	
	@Autowired
	private JwtTokenUtil jwtTokenUtil;

	@Autowired
	private JwtUserDetailsService userDetailsService;

	@RequestMapping(value = "/authenticate", method = RequestMethod.POST)
	public ModelAndView createAuthenticationToken(JwtRequest authenticationRequest,HttpServletResponse response) throws Exception {

		authenticate(authenticationRequest.getUsername(), authenticationRequest.getPassword());

		final UserDetails userDetails = userDetailsService
				.loadUserByUsername(authenticationRequest.getUsername());

		final String token = jwtTokenUtil.generateToken(userDetails);
		DAOEntreprise user=daoEntreprise.findByUsername(authenticationRequest.getUsername());
		if(user==null) {
			DAOParticipant user1=daoParticipant.findByUsername(authenticationRequest.getUsername());
			if(user1==null) {
				DAOSponsor user2=daoSponsor.findByUsername(authenticationRequest.getUsername());
				if(user2==null) {
					Cookie NotFound=new Cookie("NotFound","NotFound");
					NotFound.setMaxAge(1);
					response.addCookie(NotFound);
					return new ModelAndView("redirect:/Espace");
				}
				Cookie id=new Cookie("id", String.valueOf(user2.getId()));
				Cookie username=new Cookie("username", user2.getUsername());
				Cookie role=new Cookie("sponsor", "sponsor");
				response.addCookie(role);
				response.addCookie(id);
				response.addCookie(username);
				ResponseEntity.ok(new JwtResponse(token));
				return new ModelAndView("redirect:/");
			}
			Cookie id=new Cookie("id", String.valueOf(user1.getId()));
			Cookie username=new Cookie("username", user1.getUsername());
			Cookie role=new Cookie("participant", "participant");
			response.addCookie(role);
			response.addCookie(id);
			response.addCookie(username);
			ResponseEntity.ok(new JwtResponse(token));
			return new ModelAndView("redirect:/");
		}else if(user.isEnabled()!=true){
			Cookie denied=new Cookie("denied","denied");
			denied.setMaxAge(5);
			response.addCookie(denied);
			return new ModelAndView("redirect:/Espace");
			
		}	
		Cookie id=new Cookie("id", String.valueOf(user.getId()));
		Cookie username=new Cookie("username", user.getUsername());
		Cookie role=new Cookie("entreprise","entreprise");
		response.addCookie(role);
		response.addCookie(id);
		response.addCookie(username);
		ResponseEntity.ok(new JwtResponse(token));		
		return new ModelAndView("redirect:/");
	}
	@RequestMapping(value = "/registerEntreprise", method = RequestMethod.POST)
	public ModelAndView saveUser(EntrepriseDTO user , HttpServletResponse response) throws Exception {
		ResponseEntity.ok(userDetailsService.saveEntreprise(user));
		Cookie success=new Cookie("successwait","success");
		success.setMaxAge(1);
		response.addCookie(success);
		return new ModelAndView("redirect:/Espace");
	}
	@RequestMapping(value = "/registerSponsor", method = RequestMethod.POST)
	public ModelAndView saveUser(SponsorDTO user , HttpServletResponse response) throws Exception {
		ResponseEntity.ok(userDetailsService.saveSponsor(user));
		Cookie success=new Cookie("successwait","success");
		success.setMaxAge(1);
		response.addCookie(success);
		return new ModelAndView("redirect:/Espace");
	}
	@RequestMapping(value = "/registerParticipant", method = RequestMethod.POST)
	public ModelAndView saveUser(ParticipantDTO user , HttpServletResponse response) throws Exception {
		ResponseEntity.ok(userDetailsService.saveParticipant(user));
		Cookie success=new Cookie("success","success");
		success.setMaxAge(1);
		response.addCookie(success);
		return new ModelAndView("redirect:/Espace");
	}
	@RequestMapping(value = "/registerAdmin", method = RequestMethod.POST)
	public ModelAndView saveUser(Admin admin) throws Exception {
		if(daoAdmin.count()==0) {
			ResponseEntity.ok(userDetailsService.saveAdmin(admin));
			return new ModelAndView("redirect:/Admin");
		}else {
			return new ModelAndView("redirect:/");
		}	
	}
	private void authenticate(String username, String password) throws Exception {
		try {
			authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
		} catch (DisabledException e) {
			throw new Exception("USER_DISABLED", e);
		} catch (BadCredentialsException e) {
			throw new Exception("INVALID_CREDENTIALS", e);
		}
	}
}